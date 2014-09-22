<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="row">

    <div class="col-md-2">
        <div class="form-group">
            <form id="search_form" class="navbar-form" role="search">
                <div class="form-group">
                    <input id="search_tenders" type="text" class="form-control"
                           placeholder="Пошук...">
                </div>
            </form>
        </div>
        <div class="panel-heading hotels-filter" id="filter">
            <h4 class="panel-title">
                <a data-toggle="collapse" href="#collapseFilter">
                    Фільтр
                </a>
            </h4>

            <div id="collapseFilter" class="panel-collapse collapse">
                <div class="panel-body">
                    <select class="form-control filter-element">
                        <option selected="selected" value="338">Египет</option>
                        <option value="318">Турция</option>
                        <option value="16">ОАЭ</option>
                        <option value="372">Греция</option>
                    </select>
                    <select class="form-control filter-element">
                        <option selected="selected" value="0">Все регионы</option>
                        <option value="5486">Дахаб</option>
                        <option value="2">Макади Бей</option>
                    </select>

                    <form>
                        <p class="muted">Загальний рейтинг</p>
                        <input id="rating" value="0" type="number" class="rating" min=0 max=5 step=1
                               data-size="xs"
                               data-show-clear="false" data-show-caption="false">
                    </form>
                    <form>
                        <p class="muted">Комфорт</p>
                        <input id="comfort" value="0" type="number" class="rating" min=0 max=5 step=1
                               data-size="xs"
                               data-show-clear="false" data-show-caption="false">
                    </form>
                    <form>
                        <p class="muted">Чистота</p>
                        <input id="cleanliness" value="0" type="number" class="rating" min=0 max=5 step=1
                               data-size="xs"
                               data-show-clear="false" data-show-caption="false">
                    </form>
                    <form>
                        <p class="muted">Розташування</p>
                        <input id="location" value="0" type="number" class="rating" min=0 max=5 step=1
                               data-size="xs"
                               data-show-clear="false" data-show-caption="false">
                    </form>
                    <form>
                        <label for="value_for_money" class="muted">Ціна/Якість</label>
                        <input id="value_for_money" value="0" type="number" class="rating" min=0 max=5 step=1
                               data-size="xs"
                               data-show-clear="false" data-show-caption="false">
                    </form>
                    <button type="button" class="btn btn-default btn-block filter-element">Пошук</button>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-9 hotels-result">

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" href="#collapseHotel">
                        Hotel name
                    </a>
                </h4>

                <div id="collapseHotel" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="row clearfix">
                            <div class="col-sm-12">
                                <h3 class="text-danger">Hotel name</h3>
                            </div>
                        </div>
                        <div class="row clearfix">
                        <div class="col-sm-4">
                            <div class="input-group backdown">
                                <div>
                                    <img src="//placehold.it/170" class="avatar img-circle">
                                </div>
                            </div>
                        </div>
                            <div class="col-sm-8">

                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-5"></div>
                            <div class="col-md-2">
                                <!-- Button trigger modal -->
                                <button class="btn btn-default btn-sm" data-toggle="modal" onclick="openModalWindow()">
                                    Залишити відгук
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                     aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"><span
                                                        aria-hidden="true">&times;</span><span
                                                        class="sr-only">Close</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">Ваш відгук про готель</h4>
                                            </div>
                                            <div class="modal-body">
                                                <p class="muted">Загальний рейтинг</p>
                                                <input id="rating-fd" value="0" type="number" class="rating" min=0 max=5
                                                       step=1 data-size="xs"
                                                       data-show-clear="false" data-show-caption="false">
                                                </form>
                                                <form>
                                                    <p class="muted">Комфорт</p>
                                                    <input id="comfort-fd" value="0" type="number" class="rating" min=0
                                                           max=5 step=1 data-size="xs"
                                                           data-show-clear="false" data-show-caption="false">
                                                </form>
                                                <form>
                                                    <p class="muted">Чистота</p>
                                                    <input id="cleanliness-fd" value="0" type="number" class="rating"
                                                           min=0
                                                           max=5 step=1 data-size="xs"
                                                           data-show-clear="false" data-show-caption="false">
                                                </form>
                                                <form>
                                                    <p class="muted">Розташування</p>
                                                    <input id="location-fd" value="0" type="number" class="rating" min=0
                                                           max=5 step=1 data-size="xs"
                                                           data-show-clear="false" data-show-caption="false">
                                                </form>
                                                <form>
                                                    <label for="value_for_money" class="muted">Ціна/Якість</label>
                                                    <input id="value_for_money-fd" value="0" type="number"
                                                           class="rating"
                                                           min=0 max=5 step=1 data-size="xs"
                                                           data-show-clear="false" data-show-caption="false">
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                                    Закрити
                                                </button>
                                                <button type="button" class="btn btn-primary"
                                                        onclick="closeModalWindow();">
                                                    Залишити відгук
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>