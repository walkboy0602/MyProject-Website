<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CabalSiteMaster.Master" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="row" >

        <div class="col-lg-12">
            <div class="panel panel-default">
            <div class="panel-heading">What's New</div>
				<div class="panel-body">
					<div id="showcase" class="carousel slide bs-docs-carousel-example">
						<ol class="carousel-indicators">
							<li data-target="#showcase" data-slide-to="0" class="active"></li>
							<li data-target="#showcase" data-slide-to="1" class=""></li>
							<li data-target="#showcase" data-slide-to="2" class=""></li>
						</ol>
						<div class="carousel-inner">
							<div class="item">
							    <img class="img-responsive" src="Images/Cabal/Shop/BlueBike.jpg" alt="">
								<div class="carousel-caption">
									<h3>First slide label</h3>
									<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
								</div>
							</div>
							<div class="item active">
								<img class="img-responsive" src="Images/Cabal/Shop/hellforged-details.jpg"  alt="">
                                <div class="carousel-caption">
									<h3>First slide label</h3>
									<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
								</div>
							</div>
							<div class="item">
								<img class="img-responsive" src="Images/Cabal/Shop/RW3.jpg" alt="">
								<div class="carousel-caption">
									<h3>First slide label</h3>
									<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#showcase" data-slide="prev">
							<span class="icon-prev"></span>
						</a>
						<a class="right carousel-control" href="#showcase" data-slide="next">
							<span class="icon-next"></span>
						</a>
					</div>
				</div>
        </div>
        </div>

        <div class="col-lg-9">
            <div class="panel panel-default">
            <div class="panel-heading">News</div>
				<div class="panel-body">
					<div class="panel-group" id="accordion">
					    <div class="panel">
						<div class="panel-heading">
						    <h3 class="panel-title">
							<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
							    Cabal Nevarath has enter the land!
							</a>
						    </h3>
						</div>
						<div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
						    <div class="panel-body">
							    Open Beta at 1 Nov, 2013, come join us if you dare to challenge the most challenging Private Server in the world!
						    </div>
						</div>
					    </div>
					    <div class="panel">
						<div class="panel-heading">
						    <h3 class="panel-title">
							<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
							    Collapsible Group Item #2
							</a>
						    </h3>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
						    <div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						    </div>
						</div>
					    </div>
					    <div class="panel">
						<div class="panel-heading">
						    <h3 class="panel-title">
							<a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
							    Collapsible Group Item #3
							</a>
						    </h3>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" style="height: 0px;">
						    <div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						    </div>
						</div>
					    </div>
					</div>
				</div>
        </div>
        </div>

        <div class="col-lg-3">
            <div class="mod-box">
                <div class="eshop-button">Vote</div>
            </div>
            <div class="mod-box">
                <div class="eshop-button">Donate</div>
            </div>
            <div class="mod-box">
                <span class="module-title">Nation</span> War
                <p align="center">Coming Soon...</p>
            </div>
        </div>

    </div>

</asp:Content>