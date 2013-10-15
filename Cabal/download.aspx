<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CabalSiteMaster.Master" CodeFile="download.aspx.cs" Inherits="download" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="trans_box"></div>
    <div class="row">
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">Headings</div>
					<div class="panel-body">
						<h1 class="page-header">Page Header <small>With Small Text</small></h1>

						<h1>This is an h1 heading</h1>
						<h2>This is an h2 heading</h2>
						<h3>This is an h3 heading</h3>
						<h4>This is an h4 heading</h4>
						<h5>This is an h5 heading</h5>
						<h6>This is an h6 heading</h6>
					</div>
                </div>

                <div class="panel panel-default" id="tables">
                    <div class="panel-heading">Tables
                    </div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
							<tr>
								<th>#</th>
								<th>First Name</th>
								<th>Tables</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>1</td>
								<td>Michael</td>
								<td>Are formatted like this</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Lucille</td>
								<td>Do you like them?</td>
							</tr>
							<tr class="success">
								<td>3</td>
								<td>Success</td>
								<td></td>
							</tr>
							<tr class="danger">
								<td>4</td>
								<td>Danger</td>
								<td></td>
							</tr>
							<tr class="warning">
								<td>5</td>
								<td>Warning</td>
								<td></td>
							</tr>
							<tr class="active">
								<td>6</td>
								<td>Active</td>
								<td></td>
							</tr>
							</tbody>
						</table>
						<table class="table table-striped table-bordered table-condensed">
							<thead>
							<tr>
								<th>#</th>
								<th>First Name</th>
								<th>Tables</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>1</td>
								<td>Michael</td>
								<td>This one is bordered and condensed</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Lucille</td>
								<td>Do you still like it?</td>
							</tr>
							</tbody>
						</table>
					</div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">Content formating</div>
						<div class="panel-body">
							<p class="lead">This is lead paragraph</p>
							<p>This is an <b>ordinary paragraph</b> that is <i>long enough</i> to wrap to <u>multiple lines</u> so that you can see how the line spacing looks.</p>

							<hr>

							<p class="text-muted">Muted color paragraph.</p>
							<p class="text-warning">Warning color paragraph.</p>
							<p class="text-danger">Danger color paragraph.</p>
							<p class="text-info">Info color paragraph.</p>
							<p class="text-success">Success color paragraph.</p>

							<p><small>This is text in a <code>small</code> wrapper. <abbr title="No Big Deal">NBD</abbr>, right?</small></p>

							<hr>

							<div class="row">
								<address class="col-lg-6">
									<strong>Twitter, Inc.</strong><br>
									795 Folsom Ave, Suite 600<br>
									San Francisco, CA 94107<br>
									<abbr title="Phone">P:</abbr> (123) 456-7890
								</address>
								<address class="col-lg-6">
									<strong>Full Name</strong><br>
									<a href="mailto:#">first.last@example.com</a>
								</address>
							</div>

							<hr>

							<blockquote>Here's what a blockquote looks like in Bootstrap. <small>Use <code>small</code> to identify the source.</small>
							</blockquote>

							<hr>

							<div class="row">
								<div class="col-lg-6">
									<ul>
										<li>Normal Unordered List</li>
										<li>Can Also Work
											<ul>
												<li>With Nested Children</li>
											</ul>
										</li>
										<li>Adds Bullets to Page</li>
									</ul>
								</div>
								<div class="col-6">
									<ol>
										<li>Normal Ordered List</li>
										<li>Can Also Work
											<ol>
												<li>With Nested Children</li>
											</ol>
										</li>
										<li>Adds Bullets to Page</li>
									</ol>
								</div>
							</div>

							<hr>

							<pre>		function preFormatting() {
			// looks like this;

			var something = somethingElse;

			return true;
		}</pre>
						</div>
					</div>
			</div>
        </div>
</asp:Content>

<asp:Content runat="server" ID="ScriptContent" ContentPlaceHolderID="ScriptContent">
</asp:Content>