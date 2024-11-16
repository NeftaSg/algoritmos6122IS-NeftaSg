function initializeDetails() {
    const details = {};

    const detailsTmpl = `
        <div class="details__bg details__bg--down">
            <button class="details__close"><i class="fas fa-2x fa-times icon--cross tm-fa-close"></i></button>
            <div class="details__description"></div>
        </div>						
    `;

    details.container = document.createElement('div');
    details.container.className = 'details';
    details.container.innerHTML = detailsTmpl;
    document.getElementById('tm-wrap').appendChild(details.container);

    details.init = function () {
        details.bgDown = details.container.querySelector('.details__bg--down');
        details.description = details.container.querySelector('.details__description');
        details.close = details.container.querySelector('.details__close');

        details.initEvents();
    };

    details.initEvents = function () {
        document.body.addEventListener('click', () => details.close());
        details.bgDown.addEventListener('click', function (event) {
            event.stopPropagation();
        });
        details.close.addEventListener('click', () => details.close());
    };

    details.fill = function (info) {
        details.description.innerHTML = info.description;
    };

    details.getProductDetailsRect = function () {
        var p = 0;
        var d = 0;

        try {
            p = details.productBg.getBoundingClientRect();
            d = details.bgDown.getBoundingClientRect();
        }
        catch (e) { }

        return {
            productBgRect: p,
            detailsBgRect: d
        };
    };

    details.open = function (data) {
        if (details.isAnimating) return false;
        details.isAnimating = true;

        details.container.style.display = 'block';
        details.container.classList.add('details--open');

        details.productBg = data.productBg;

        details.productBg.style.opacity = 0;

        const rect = details.getProductDetailsRect();

        details.bgDown.style.transform = `translateX(${rect.productBgRect.left - rect.detailsBgRect.left}px) translateY(${rect.productBgRect.top - rect.detailsBgRect.top}px) scaleX(${rect.productBgRect.width / rect.detailsBgRect.width}) scaleY(${rect.productBgRect.height / rect.detailsBgRect.height})`;
        details.bgDown.style.opacity = 1;

        anime({
            targets: [details.bgDown],
            duration: (target, index) => index ? 800 : 250,
            easing: (target, index) => index ? 'easeOutElastic' : 'easeOutSine',
            elasticity: 250,
            translateX: 0,
            translateY: 0,
            scaleX: 1,
            scaleY: 1,
            complete: () => details.isAnimating = false
        });

        anime({
            targets: [details.description],
            duration: 1000,
            easing: 'easeOutExpo',
            translateY: ['100%', 0],
            opacity: 1
        });

        anime({
            targets: details.close,
            duration: 250,
            easing: 'easeOutSine',
            translateY: ['100%', 0],
            opacity: 1
        });

        details.setCarousel();

        window.addEventListener("resize", details.setCarousel);
    };

    details.close = function () {
        if (details.isAnimating) return false;
        details.isAnimating = true;

        details.container.classList.remove('details--open');

        anime({
            targets: details.close,
            duration: 250,
            easing: 'easeOutSine',
            translateY: '100%',
            opacity: 0
        });

        anime({
            targets: [details.description],
            duration: 20,
            easing: 'linear',
            opacity: 0
        });

        const rect = details.getProductDetailsRect();
        anime({
            targets: [details.bgDown],
            duration: 250,
            easing: 'easeOutSine',
            translateX: (target, index) => {
                return index ? rect.productImgRect.left - rect.detailsImgRect.left : rect.productBgRect.left - rect.detailsBgRect.left;
            },
            translateY: (target, index) => {
                return index ? rect.productImgRect.top - rect.detailsImgRect.top : rect.productBgRect.top - rect.detailsBgRect.top;
            },
            scaleX: (target, index) => {
                return index ? rect.productImgRect.width / rect.detailsImgRect.width : rect.productBgRect.width / rect.detailsBgRect.width;
            },
            scaleY: (target, index) => {
                return index ? rect.productImgRect.height / rect.detailsImgRect.height : rect.productBgRect.height / rect.detailsBgRect.height;
            },
            complete: () => {
                details.bgDown.style.opacity = 0;
                details.bgDown.style.transform = 'none';
                details.productBg.style.opacity = 1;
                details.container.style.display = 'none';
                details.isAnimating = false;
            }
        });
    };

    details.setCarousel = function () {
        var slider = $('.details .tm-img-slider');

        if (slider.length) { // check if slider exists
            if (slider.hasClass('slick-initialized')) {
                slider.slick('destroy');
            }

            if ($(window).width() > 767) {
                // Slick carousel
                slider.slick({
                    dots: true,
                    infinite: true,
                    slidesToShow: 4,
                    slidesToScroll: 3
                });
            }
            else {
                slider.slick({
                    dots: true,
                    infinite: true,
                    slidesToShow: 2,
                    slidesToScroll: 1
                });
            }
        }
    };

    details.init();

    return details;
}

function initializeItem(el, details) {
    const item = {};
    item.el = el;
    item.product = item.el.querySelector('.product');
    item.productBg = item.product.querySelector('.product__bg');

    item.info = {
        description: item.product.querySelector('.product__description').innerHTML
    };

    item.initEvents = function () {
        item.product.addEventListener('click', () => item.open());
    };

    item.open = function () {
        details.fill(item.info);
        details.open({
            productBg: item.productBg
        });
    };

    item.initEvents();

    return item;
}

const grid = document.querySelector('.grid');
const gridItems = Array.from(grid.querySelectorAll('.grid__item'));

const details = initializeDetails();
const items = gridItems.map(item => initializeItem(item, details));
