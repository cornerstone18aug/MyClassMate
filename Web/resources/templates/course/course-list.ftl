<#-- @ftlvariable name="model" type="ca.myclassmate.models.login.LoginIndexModel" -->
<#include "../shared/header.ftl">


    <div class="page-wrapper chiller-theme toggled">

        <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
            <i class="fas fa-bars"></i>
        </a>

        <#include "../shared/sidebar.ftl">

        <main class="page-content content-courses content-courses-teacher">

            <div class="container">

                <div class="content-header">
                    <h2>Courses</h2>
                </div>
                <!-- /.content-header -->

                <div class="list-group">

                    <a href="#" class="list-group-item">
                        <div class="media col-md-3">
                            <figure>
                                <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250"
                                     alt="placehold.it/350x250">
                            </figure>
                        </div>
                        <div class="course-info col-md-6">
                            <h4 class="list-group-item-heading">Introduction to Computing</h4>
                            <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Cumque eum fugiat iste maiores nesciunt nobis recusandae repellendus.</p>
                        </div>
                        <div class="course-date col-md-3 text-center">
                            <p>Course starts: <span>20/07/2018</span></p>
                            <p>Course ends: <span>21/08/2018</span></p>
                            <p>
                                <button class="btn btn-primary btn-lg">Tasks</button>
                            </p>
                        </div>
                    </a>

                    <a href="#" class="list-group-item">
                        <div class="media col-md-3">
                            <figure>
                                <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250"
                                     alt="placehold.it/350x250">
                            </figure>
                        </div>
                        <div class="course-info col-md-6">
                            <h4 class="list-group-item-heading">Algorithms, Flow Charts and Problem Solving</h4>
                            <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Deleniti hic incidunt maiores nemo officia possimus praesentium qui temporibus unde
                                vero?</p>
                        </div>
                        <div class="course-date col-md-3 text-center">
                            <p>Course starts: <span>20/07/2018</span></p>
                            <p>Course ends: <span>21/08/2018</span></p>
                            <p>
                                <button class="btn btn-primary btn-lg">Tasks</button>
                            </p>
                        </div>
                    </a>

                    <a href="#" class="list-group-item">
                        <div class="media col-md-3">
                            <figure>
                                <img class="media-object img-rounded img-responsive" src="http://placehold.it/350x250"
                                     alt="placehold.it/350x250">
                            </figure>
                        </div>
                        <div class="course-info col-md-6">
                            <h4 class="list-group-item-heading">Java</h4>
                            <p class="list-group-item-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Ducimus eius facere mollitia necessitatibus, provident quaerat quia sint totam veritatis
                                voluptatum? Blanditiis, ratione!</p>
                        </div>
                        <div class="course-date col-md-3 text-center">
                            <p>Course starts: <span>20/07/2018</span></p>
                            <p>Course ends: <span>21/08/2018</span></p>
                            <p>
                                <button class="btn btn-primary btn-lg">Tasks</button>
                            </p>
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