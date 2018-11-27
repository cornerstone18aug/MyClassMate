<#include "../shared/header.ftl">
<div class="page-wrapper chiller-theme toggled">

    <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
        <i class="fas fa-bars"></i>
    </a>

    <#include "../shared/sidebar.ftl">

    <main class="page-content content-courses">

        <div class="container">

            <div class="content-header">
                <h2>Introduction to Computing</h2>
            </div>
            <!-- /.content-header -->

            <div class="list-group tasks-list">

                <a data-toggle="collapse" href="#task-1" class="list-group-item">
                    <div class="media col-md-3">
                        <figure>
                            <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250"
                                 alt="placehold.it/350x250">
                        </figure>
                    </div>
                    <div class="course-info col-md-6">
                        <h4 class="list-group-item-heading">Lab 1</h4>
                        <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque
                            eum fugiat iste maiores nesciunt nobis recusandae repellendus.</p>
                        <p class="list-group-item-text due-date">Due Date: <span>27/11/2018</span></p>
                        <p class="list-group-item-text status status-ongoing">Status: <span>On going</span></p>
                    </div>
                    <div class="course-date col-md-3 text-center">
                        <h3>Deliver task</h3>

                        <button type="button" class="btn btn-primary btn-lg btn-task">
                            <span class="glyphicon glyphicon-save"></span>
                        </button>

                    </div>
                </a>

                <div class="collapse task-deliver" id="task-1">
                    <div class="well">

                        <!-- Upload  -->
                        <form id="file-upload-form" class="uploader">
                            <input id="file-upload" type="file" name="fileUpload" accept="image/*"/>

                            <label for="file-upload" id="file-drag">
                                <img id="file-image" src="#" alt="Preview" class="hidden">
                                <div id="start">
                                    <i class="fa fa-download" aria-hidden="true"></i>
                                    <div>Select a file or drag here</div>
                                    <div id="notimage" class="hidden">Please select an image</div>
                                    <span id="file-upload-btn" class="btn btn-primary">Select a file</span>
                                </div>
                                <div id="response" class="hidden">
                                    <div id="messages"></div>
                                    <progress class="progress" id="file-progress" value="0">
                                        <span>0</span>%
                                    </progress>
                                </div>
                            </label>
                        </form>

                    </div>
                </div>

                <a data-toggle="collapse" href="#task-2" class="list-group-item">
                    <div class="media col-md-3">
                        <figure>
                            <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250"
                                 alt="placehold.it/350x250">
                        </figure>
                    </div>
                    <div class="course-info col-md-6">
                        <h4 class="list-group-item-heading">Lab 2</h4>
                        <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                            Deleniti hic incidunt maiores nemo officia possimus praesentium qui temporibus unde
                            vero?</p>
                        <p class="list-group-item-text due-date">Due Date: <span>27/11/2018</span></p>
                        <p class="list-group-item-text status status-delayed">Status: <span>Delayed</span></p>
                    </div>
                    <div class="course-date col-md-3 text-center">
                        <h3>Deliver task</h3>

                        <button type="button" class="btn btn-primary btn-lg btn-task">
                            <span class="glyphicon glyphicon-save"></span>
                        </button>

                    </div>
                </a>

                <div class="collapse task-deliver" id="task-2">
                    <div class="well">

                        <!-- Upload  -->
                        <form id="file-upload-form" class="uploader">
                            <input id="file-upload" type="file" name="fileUpload" accept="image/*"/>

                            <label for="file-upload" id="file-drag">
                                <img id="file-image" src="#" alt="Preview" class="hidden">
                                <div id="start">
                                    <i class="fa fa-download" aria-hidden="true"></i>
                                    <div>Select a file or drag here</div>
                                    <div id="notimage" class="hidden">Please select an image</div>
                                    <span id="file-upload-btn" class="btn btn-primary">Select a file</span>
                                </div>
                                <div id="response" class="hidden">
                                    <div id="messages"></div>
                                    <progress class="progress" id="file-progress" value="0">
                                        <span>0</span>%
                                    </progress>
                                </div>
                            </label>
                        </form>

                    </div>
                </div>

                <a href="#" class="list-group-item">
                    <div class="media col-md-3">
                        <figure>
                            <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250"
                                 alt="placehold.it/350x250">
                        </figure>
                    </div>
                    <div class="course-info col-md-6">
                        <h4 class="list-group-item-heading">Quiz 1</h4>
                        <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                            Ducimus eius facere mollitia necessitatibus, provident quaerat quia sint totam veritatis
                            voluptatum? Blanditiis, ratione!</p>
                        <p class="list-group-item-text due-date">Due Date: <span>27/11/2018</span></p>
                        <p class="list-group-item-text status status-delivered">Status: <span>Delivered</span></p>
                    </div>
                    <div class="course-date col-md-3 text-center">
                        <h3>Your grade</h3>

                        <div class="stars">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                        </div>

                    </div>
                </a>

            </div>

        </div>
        <!-- /.container -->

    </main>
    <!-- page-content" -->
</div>
    <!-- page-wrapper -->

<#include "../shared/footer.ftl">