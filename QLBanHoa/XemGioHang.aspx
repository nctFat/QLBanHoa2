<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="XemGioHang.aspx.cs" Inherits="QLBanHoa.XemGioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Giỏ hàng</h1>
    <asp:GridView ID="gvGioHang" runat="server"
        CssClass="table table-bordered" AutoGenerateColumns="false"
        DataKeyNames="masp" OnRowDeleting="gvGioHang_RowDeleting"
                OnRowUpdating="gvGioHang_RowUpdating">
        <Columns>
            <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinh"
                DataImageUrlFormatString="Hinh_San_Pham/{0}"
                HeaderText="Ảnh sản phẩm" ControlStyle-Width="150px">
            </asp:ImageField>
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="tensp" />
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia"
                DataFormatString="{0:#,##0}đ" />
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server"
                        CssClass="form-control text-center" Width="100px" Text='<%# Eval("soluong")%>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành tiền" DataField="Thanhtien"
                DataFormatString="{0:#,##0}đ" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btUpdate" runat="server" CommandName="Update" CssClass="btn btn-secondary">
                          <i class="bi bi-pencil-square"></i> Update </asp:LinkButton>
                    <asp:LinkButton ID="btDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger">
                         <i class="bi bi-trash"></i>  Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info">
                Chưa có sản phẩm trong giỏ
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="row">
        <div class="col-md-6">
            <a href="XemHoa.aspx" class="btn btn-info">Tiếp tục mua hàng</a>
        </div>
        <div class="col-md-6 text-right">
            <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row" style="padding-bottom: 10px">
        <div class="col-md-12 text-right">

            <asp:Button ID="btDatHang" runat="server" Text="Đặt hàng" CssClass="btn btn-
success" />

        </div>
    </div>
</asp:Content>
