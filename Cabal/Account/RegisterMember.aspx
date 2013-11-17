<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CabalSiteMaster.Master" CodeFile="RegisterMember.aspx.cs" Inherits="Account_RegisterMember" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-lg-12">
               <div class="trans_box" data-ng-controller="RegisterController">

                   <legend>Register Account</legend>

                   <form class="form-horizontal" id="formRegister" data-ng-submit="save(form)">

                       <div class="form-group has-warning">
                           <label class="col-lg-4 control-label">Username</label>
                           <div class="col-lg-6">
                                <input type="text" class="form-control" name="username" placeholder="Username" data-ng-model="form.Username" />
                           </div>
                       </div>

                        <div class="form-group has-warning">
                           <label class="col-lg-4 control-label">Password</label>
                           <div class="col-lg-6">
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password" data-ng-model="form.Password" />
                           </div>
                       </div>

                        <div class="form-group has-warning">
                           <label class="col-lg-4 control-label">Confirm Password</label>
                           <div class="col-lg-6">
                                <input type="password" id="cPassword" name="cPassword" class="form-control" placeholder="Confirm Password" data-ng-model="form.cPassword" />
                           </div>
                       </div>

                        <div class="form-group has-warning">
                           <label class="col-lg-4 control-label">Email</label>
                           <div class="col-lg-6">
                                <input type="email" id="email" name="email" class="form-control" placeholder="Email" data-ng-model="form.Email" />
                           </div>
                       </div>

                        <div class="form-group">
                            <div class="col-lg-offset-4 col-lg-10">
                                <button type="submit" class="btn btn-warning">Register</button>
                            </div>
                        </div>

                        <div class="col-lg-offset-2">
                            <div class="alert-center alert-{{alert.type}}" data-ng-show="alert.display">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <strong>{{alert.title}}</strong> {{alert.msg}}
                            </div>
                        </div>
                   </form>

               </div>
            </div>
        </div>
</asp:Content>

<asp:Content runat="server" ID="ScriptContent" ContentPlaceHolderID="ScriptContent">
</asp:Content>