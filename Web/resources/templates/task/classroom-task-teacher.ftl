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

            <div class="new-task">
                <a data-toggle="collapse" href="#new-task">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            New task

                            <span class="glyphicon glyphicon-plus-sign"></span>
                        </div>
                    </div>
                </a>

                <div class="collapse student-deliver" id="new-task">
                    <div class="well">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="sr-only" for="title">Title</label>
                                        <input type="text" class="form-control" id="title" placeholder="Title">
                                    </div>
                                </div>
                                <!-- /.col-md-6 -->

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="sr-only" for="dute-date">Due Date</label>
                                        <input type="text" class="form-control" id="due-date" placeholder="Dute date">
                                    </div>
                                </div>
                                <!-- /.col-md-6 -->
                            </div>
                            <!-- /.row -->
                            <div class="row">
                                <div class="col-xs-12">
                                    <textarea class="form-control" rows="7" placeholder="Description"></textarea>
                                </div>
                                <!-- /.col-xs-12 -->
                            </div>
                            <!-- /.row -->
                            <div class="row">
                                <div class="col-md-2">
                                    <br>
                                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                                </div>
                            </div>
                            <!-- /.row -->
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.new-task -->

            <!-- Nav tabs -->
            <ul class="labs-list" role="tablist">
                <li class="active"><a href="#lab1" data-toggle="tab">Lab 1</a></li>
                <li><a href="#lab2" data-toggle="tab">Lab 2</a></li>
            </ul>

            <div class="tab-content student-list">

                <div role="tabpanel" class="tab-pane fade in active" id="lab1">

                    <div class="task-title">
                        <h2>Lab 1</h2>
                        <p>Task description Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam,
                            doloribus!</p>
                        <p class="due-date">Due date: <span>27/11/2018</span></p>
                    </div>
                    <!-- /.task-title -->

                    <div class="row">

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-1">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-1">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="student-item">
                                <div class="well well-sm clearfix">
                                    <div class="col-sm-3 col-md-3 text-center">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                    <div class="col-sm-5 col-md-6">
                                        <h4>Jonathan Lim</h4>
                                        <p>email@email.com</p>
                                    </div>
                                    <div class="col-sm-4 col-md-3">
                                        <span class="glyphicon glyphicon-ok-circle"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-3">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-3">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->

                    <div class="row">

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-4">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-4">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="student-item">
                                <div class="well well-sm clearfix">
                                    <div class="col-sm-3 col-md-3 text-center">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                    <div class="col-sm-5 col-md-6">
                                        <h4>Jonathan Lim</h4>
                                        <p>email@email.com</p>
                                    </div>
                                    <div class="col-sm-4 col-md-3">
                                        <span class="glyphicon glyphicon-ok-circle"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-6">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-6">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.tab-pane -->

                <div role="tabpanel" class="tab-pane fade" id="lab2">

                    <div class="task-title">
                        <h2>Lab 2</h2>
                        <p>Task description Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam,
                            doloribus!</p>
                        <p class="due-date">Due date: <span>27/11/2018</span></p>
                    </div>
                    <!-- /.task-title -->

                    <div class="row">

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-7">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-7">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="student-item">
                                <div class="well well-sm clearfix">
                                    <div class="col-sm-3 col-md-3 text-center">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                    <div class="col-sm-5 col-md-6">
                                        <h4>Jonathan Lim</h4>
                                        <p>email@email.com</p>
                                    </div>
                                    <div class="col-sm-4 col-md-3">
                                        <span class="glyphicon glyphicon-ok-circle"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-9">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-9">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->

                    <div class="row">

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-10">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-10">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="student-item">
                                <div class="well well-sm clearfix">
                                    <div class="col-sm-3 col-md-3 text-center">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                    <div class="col-sm-5 col-md-6">
                                        <h4>Jonathan Lim</h4>
                                        <p>email@email.com</p>
                                    </div>
                                    <div class="col-sm-4 col-md-3">
                                        <span class="glyphicon glyphicon-ok-circle"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <a data-toggle="collapse" href="#student-12">
                                <div class="student-item">
                                    <div class="well well-sm student-delayed clearfix">
                                        <div class="col-sm-3 col-md-3 text-center">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </div>
                                        <div class="col-sm-5 col-md-6">
                                            <h4>Jonathan Lim</h4>
                                            <p>email@email.com</p>
                                        </div>
                                        <div class="col-sm-4 col-md-3">
                                            <span class="glyphicon glyphicon-alert"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <div class="collapse student-deliver" id="student-12">
                                <div class="well">
                                    <button class="btn btn-primary btn-lg">Task delivered</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.tab-pane -->
            </div>

        </div>
        <!-- /.container -->

    </main>
    <!-- page-content" -->
</div>
    <!-- page-wrapper -->

<#include "../shared/footer.ftl">