<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<div>
<div id="left_div" class="form">
    <form class="form-horizontal" role="form" name="form" id="form" action="/search/result">
        <div class="form-group">
            <div class="col-sm-6">
                <p>Країна:</p>
                <select class="form-control" id="country" name="country">
                    <option>Єгипет</option>
                    <option>Греція</option>
                    <option>Туреччина</option>
                </select>
            </div>
            <div class="col-sm-6">
                <p>Регіон:</p>
                <select class="form-control" id="region" name="region">
                    <option>Дахаб</option>
                    <option>Макаді Бей</option>
                    <option>Марса Алам</option>
                    <option>Аланья</option>
                </select>
            </div>
            <div class="col-sm-6">
                <p>Готель:</p>

                    <label>1*</label>
                    <input type="checkbox" value="1" id="oneStar" name="oneStar">
                    <label>2*</label>
                    <input type="checkbox" value="2" id="twoStar" name="twoStar">
                    <label>3*</label>
                    <input type="checkbox" value="3" id="threeStar" name="threeStar">
                    <label>4*</label>
                    <input type="checkbox" value="4" id="fourStar" name="fourStar">
                    <label>5*</label>
                    <input type="checkbox" value="5" id="fiveStar" name="fiveStar">


            </div>
            <div class="col-sm-6">
                <p>Харчування:</p>

                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="HB" id="foodOne" name="foodOne">
                        HB
                    </label>
                    <label>
                        <input type="checkbox" value="BB" id="foodTwo" name="foodTwo">
                        BB
                    </label>
                    <label>
                        <input type="checkbox" value="FB" id="foodThree" name="foodThree">
                        FB
                    </label>
                    <br>
                    <label>
                        <input type="checkbox" value="AI" id="foodFour" name="foodFour">
                        AI
                    </label>
                    <label>
                        <input type="checkbox" value="UAI" id="foodFive" name="foodFive">
                        UAI
                    </label>
                    <label>
                        <input type="checkbox" value="RO" id="foodSix" name="foodSix">
                        RO
                    </label>
                </div>
            </div>
            <br>
            <p>Розміщення в номері:</p>
            <div class="col-sm-6">
                <p>Дорослі:</p>
                <select class="form-control" id="adults" name="adults">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <div class="col-sm-6">
                <p>Діти:</p>
                <select class="form-control" id="children" name="children">
                    <option>0</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <br>
            <p>Дата вильоту:</p>
            <div class="col-sm-6">
                <p>З:</p>
                <input type="text" class="form-control" id="dateFrom" name="dateFrom" placeholder="11.11.14">
            </div>
            <div class="col-sm-6">
                <p>По:</p>
                <input type="text" class="form-control" id="dateTo" name="dateTo" placeholder="31.12.14">
            </div>
            <div class="col-sm-6">
                <p>Кількість ночей:</p>
                <div class="col-sm-6">
                    <p>Від:</p>
                    <select class="form-control" id="nightFrom" name="nightFrom">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                    </select>
                </div>

                <div class="col-sm-6">
                    <p>До:</p>
                    <select class="form-control" id="nightTo" name="nightTo">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                        <option>13</option>
                        <option>14</option>
                        <option>15</option>
                        <option>16</option>
                        <option>17</option>
                        <option>18</option>
                        <option>19</option>
                        <option>20</option>
                        <option>21</option>
                    </select>
                </div>
            </div>
            <p>Ціна(грн):</p>
            <div class="col-sm-6" style="margin-bottom: 5px;">
                <div class="col-sm-6">
                    <p>З:</p>
                    <input type="text" class="form-control" id="priceFrom" name="priceFrom">
                </div>
                <div class="col-sm-6">
                    <p>До:</p>
                    <input type="text" class="form-control" id="priceTo" name="priceTo">
                </div>
            </div>
        </div>
        <input type="button" class="btn btn-primary btn-lg" value="Пошук" onclick="showResults()">
    </form>
</div>

<div class="col-sm-6">
    <div id="carousel-example-generic" class="carousel slide mycarousel" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="img/egypt_carousel.jpg">
                <div class="carousel-caption" >
                </div>
                <p style="font-size:18px;">Єгипет славиться багатьма фестивалями і релігійними карнавалами, відомий також як мавлід (Mawlid). Як правило, вони пов'язані з конкретними коптськими чи суфійськими святими, але часто їх святкують всі єгиптяни, незалежно від віросповідання чи релігії.</p>
            </div>
            <div class="item">
                <img src="img/greece_carousel.jpg">
                <div class="carousel-caption">
                </div>
                <p style="font-size:18px;">Серед найбільш відомих та популярних туристичних центрів Греції: історико-культурних — Афіни, Дельфи, острів Корфу, Крит; центри пляжного відпочинку — півострів Халкідіки, острови-курорти Міконос, Санторіні, Парос і Крит; центри паломництва християн — Свята гора Афон, Метеорські монастирі, візантійські пам'ятки Салонік (Базиліка Святого Дімітрія, Базиліка Святої Софії та інші), занесені до переліку об'єктів світової спадщини ЮНЕСКО.</p>
            </div>
            <div class="item">
                <img src="img/turkey_carousel.jpg">
                <div class="carousel-caption">
                </div>
                <p style="font-size:18px;">Найпопулярніші курорти в Туреччині — Сіде, Белек, Мармарис, Анталія, Кемер, Аланія, Бодрум, Фетхіє.</p>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div><!--каруселька-->
</div><!--правий блок контенту-->

</div>

    <div style="margin-top: 50px"></div>
<div class="col-md-12">

    <div id="searchResult">

    </div>


</div>
    <!--input type="button" value="Search" onclick="showResults()"-->
    <script id="searchTemplate" type="text/x-jquery-tmpl">
        <!--<span><h2>Результати пошуку:</h2></span>-->
        <div style="max-width: 100%; max-height: 100%; margin: auto">
            <div class="panel panel-default" id="panel-favorite\${id}" style="margin: auto">
                <div class="panel-heading">
                         <span data-toggle="collapse" href="#panel-element-f\${id}">
                         <span class="tabTitleFont cursor-pointer" >Країна: </span>
                         <span id="tourCountry-f\${id}" class="tabulatedTitle cursor-pointer">\${hotel.region.country.name}</span>
                         <span class="tabTitleFont cursor-pointer" >Готель: </span>
                         <span id="tourHotelName-f\${id}" class="tabulatedTitle cursor-pointer">\${hotel.name}</span>
                         <span class="tabTitleFont cursor-pointer" >Тривалість туру: </span>
                         <span id="tourDays-f\${id}" class="tabulatedTitle cursor-pointer">\${days} Дні(Днів)</span>
                         <span class="tabTitleFont cursor-pointer">Вартість туру: </span>
                         <span id="tourPrice-f\${id}" class="tabulatedTitle cursor-pointer">\${price} $</span>
                         <span class="tabTitleFont cursor-pointer">Харчування: </span>
                         <span id="tourFood-f\${id}" class="tabulatedTitle cursor-pointer">\${food}</span>
                         <span class="tabTitleFont cursor-pointer">Дата вильоту: </span>
                         <span id="tourDepartureDate-f\${id}" class="tabulatedTitle cursor-pointer">\${date}</span></span>
                         <span class="tabTitleFont cursor-pointer">Місто вильоту: </span>
                         <span id="tourDepartureDate-f\${id}" class="tabulatedTitle cursor-pointer">\${departureCity}</span></span>
                         <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
                         <span id="deleteButtonF\${id}" data-role="button" class="pull-right" data-toogle="tooltip" data-placemant="top" title="Додати до улюблених"><i class="glyphicon glyphicon-star-empty cursor-pointer" onclick="saveFavorites(\${id})"></i></span>
                         </security:authorize>
                </div>
                <div id="panel-element-f\${id}" class="panel-collapse collapse">
                    <div class="panel-body">
                        Info about tour \${id}...
                    </div>
                </div>
            </div>
        </div>
</script>

