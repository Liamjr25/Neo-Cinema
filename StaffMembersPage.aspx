﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="StaffMembersPage.aspx.cs" Inherits="NeoCinemas.StaffMembersPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
            * {
    margin: 0;
    padding: 0;

    box-sizing: border-box;
    font-family: sans-serif;
}

body {
    min-height: 100vh;
    background: url(images/html_table.jpg) center / cover;
    display: flex;
    justify-content: center;
    align-items: center;
}

main.table {
    width: 82vw;
    height: 90vh;
    background-color: #fff5;

    backdrop-filter: blur(7px);
    box-shadow: 0 .4rem .8rem #0005;
    border-radius: .8rem;

    overflow: hidden;
}

.table__header {
    width: 100%;
    height: 10%;
    background-color: #fff4;
    padding: .8rem 1rem;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.table__header .input-group {
    width: 35%;
    height: 100%;
    background-color: #fff5;
    padding: 0 .8rem;
    border-radius: 2rem;

    display: flex;
    justify-content: center;
    align-items: center;

    transition: .2s;
}

.table__header .input-group:hover {
    width: 45%;
    background-color: #fff8;
    box-shadow: 0 .1rem .4rem #0002;
}

.table__header .input-group img {
    width: 1.2rem;
    height: 1.2rem;
}

.table__header .input-group input {
    width: 100%;
    padding: 0 .5rem 0 .3rem;
    background-color: transparent;
    border: none;
    outline: none;
}

.table__body {
    width: 95%;
    max-height: calc(89% - 1.6rem);
    background-color: #fffb;

    margin: .8rem auto;
    border-radius: .6rem;

    overflow: auto;
    overflow: overlay;
}

.table__body::-webkit-scrollbar{
    width: 0.5rem;
    height: 0.5rem;
}

.table__body::-webkit-scrollbar-thumb{
    border-radius: .5rem;
    background-color: #0004;
    visibility: hidden;
}

.table__body:hover::-webkit-scrollbar-thumb{ 
    visibility: visible;
}

table {
    width: 100%;
}

td img {
    width: 36px;
    height: 36px;
    margin-right: .5rem;
    border-radius: 50%;

    vertical-align: middle;
}

table, th, td {
    border-collapse: collapse;
    padding: 1rem;
    text-align: left;
}

thead th {
    position: sticky;
    top: 0;
    left: 0;
    background-color: #d5d1defe;
    cursor: pointer;
    text-transform: capitalize;
}

tbody tr:nth-child(even) {
    background-color: #0000000b;
}

tbody tr {
    --delay: .1s;
    transition: .5s ease-in-out var(--delay), background-color 0s;
}

tbody tr.hide {
    opacity: 0;
    transform: translateX(100%);
}

tbody tr:hover {
    background-color: #fff6 !important;
}

tbody tr td,
tbody tr td p,
tbody tr td img {
    transition: .2s ease-in-out;
}

tbody tr.hide td,
tbody tr.hide td p {
    padding: 0;
    font: 0 / 0 sans-serif;
    transition: .2s ease-in-out .5s;
}

tbody tr.hide td img {
    width: 0;
    height: 0;
    transition: .2s ease-in-out .5s;
}

.status {
    padding: .4rem 0;
    border-radius: 2rem;
    text-align: center;
}

.status.delivered {
    background-color: #86e49d;
    color: #006b21;
}

.status.cancelled {
    background-color: #d893a3;
    color: #b30021;
}

.status.pending {
    background-color: #ebc474;
}

.status.shipped {
    background-color: #6fcaea;
}


@media (max-width: 1000px) {
    td:not(:first-of-type) {
        min-width: 12.1rem;
    }
}

thead th span.icon-arrow {
    display: inline-block;
    width: 1.3rem;
    height: 1.3rem;
    border-radius: 50%;
    border: 1.4px solid transparent;
    
    text-align: center;
    font-size: 1rem;
    
    margin-left: .5rem;
    transition: .2s ease-in-out;
}

thead th:hover span.icon-arrow{
    border: 1.4px solid #6c00bd;
}

thead th:hover {
    color: #6c00bd;
}

thead th.active span.icon-arrow{
    background-color: #6c00bd;
    color: #fff;
}

thead th.asc span.icon-arrow{
    transform: rotate(180deg);
}

thead th.active,tbody td.active {
    color: #6c00bd;
}

.export__file {
    position: relative;
}

.export__file .export__file-btn {
    display: inline-block;
    width: 2rem;
    height: 2rem;
    background: #fff6 url(images/export.png) center / 80% no-repeat;
    border-radius: 50%;
    transition: .2s ease-in-out;
}

.export__file .export__file-btn:hover { 
    background-color: #fff;
    transform: scale(1.15);
    cursor: pointer;
}

.export__file input {
    display: none;
}

.export__file .export__file-options {
    position: absolute;
    right: 0;
    
    width: 12rem;
    border-radius: .5rem;
    overflow: hidden;
    text-align: center;

    opacity: 0;
    transform: scale(.8);
    transform-origin: top right;
    
    box-shadow: 0 .2rem .5rem #0004;
    
    transition: .2s;
}

.export__file input:checked + .export__file-options {
    opacity: 1;
    transform: scale(1);
    z-index: 100;
}

.export__file .export__file-options label{
    display: block;
    width: 100%;
    padding: .6rem 0;
    background-color: #f2f2f2;
    
    display: flex;
    justify-content: space-around;
    align-items: center;

    transition: .2s ease-in-out;
}

.export__file .export__file-options label:first-of-type{
    padding: 1rem 0;
    background-color: #86e49d !important;
}

.export__file .export__file-options label:hover{
    transform: scale(1.05);
    background-color: #fff;
    cursor: pointer;
}

.export__file .export__file-options img{
    width: 2rem;
    height: auto;
}

        .auto-style3 {
        width: 773px;
    }

        </style>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
<main class="table">
                <section class="table__header">
                    <h1>Customer&#39;s Orders</h1>
                    <div class="input-group">
                        <input placeholder="Search Data..." type="search" />
                        <img alt="" src="images/search.png" />
                    </div>
                    <div class="export__file">
                        <label class="export__file-btn" for="export-file" title="Export File">
                        </label>
                        <input id="export-file" type="checkbox" />
                        <div class="export__file-options">
                            <label>
                            Export As &nbsp; ➜</label>
                            <label id="toPDF" for="export-file">
                            PDF
                            <img alt="" src="images/pdf.png" /></label>
                            <label id="toJSON" for="export-file">
                            JSON
                            <img alt="" src="images/json.png" /></label>
                            <label id="toCSV" for="export-file">
                            CSV
                            <img alt="" src="images/csv.png" /></label>
                            <label id="toEXCEL" for="export-file">
                            EXCEL
                            <img alt="" src="images/excel.png" /></label>
                        </div>
                    </div>
                </section>
                <section class="table__body">
                    <table>
                        <thead>
                            <tr>
                                <th>Id <span class="icon-arrow">&amp;UpArrow;</span></th>
                                <th>Customer <span class="icon-arrow">&amp;UpArrow;</span></th>
                                <th>Location <span class="icon-arrow">&amp;UpArrow;</span></th>
                                <th>Order Date <span class="icon-arrow">&amp;UpArrow;</span></th>
                                <th>Status <span class="icon-arrow">&amp;UpArrow;</span></th>
                                <th>Amount <span class="icon-arrow">&amp;UpArrow;</span></th>
                            </tr>
                        </thead>
                        <tr>
                            <td>1 </td>
                            <td>
                                <img alt="" src="images/Zinzu%20Chan%20Lee.jpg" />Zinzu Chan Lee</td>
                            <td>Seoul </td>
                            <td>17 Dec, 2022 </td>
                            <td>
                                <p class="status delivered">
                                    Delivered</p>
                            </td>
                            <td><strong>$128.90 </strong></td>
                        </tr>
                        <tr>
                            <td>2 </td>
                            <td>
                                <img alt="" src="images/Jeet%20Saru.jpg" /> Jeet Saru </td>
                            <td>Kathmandu </td>
                            <td>27 Aug, 2023 </td>
                            <td>
                                <p class="status cancelled">
                                    Cancelled</p>
                            </td>
                            <td><strong>$5350.50</strong> </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>
                                <img alt="" src="images/Sonal%20Gharti.jpg" /> Sonal Gharti </td>
                            <td>Tokyo </td>
                            <td>14 Mar, 2023 </td>
                            <td>
                                <p class="status shipped">
                                    Shipped</p>
                            </td>
                            <td><strong>$210.40</strong> </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>
                                <img alt="" src="images/Alson%20GC.jpg" /> Alson GC </td>
                            <td>New Delhi </td>
                            <td>25 May, 2023 </td>
                            <td>
                                <p class="status delivered">
                                    Delivered</p>
                            </td>
                            <td><strong>$149.70</strong> </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>
                                <img alt="" src="images/Sarita%20Limbu.jpg" /> Sarita Limbu </td>
                            <td>Paris </td>
                            <td>23 Apr, 2023 </td>
                            <td>
                                <p class="status pending">
                                    Pending</p>
                            </td>
                            <td><strong>$399.99</strong> </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>
                                <img alt="" src="images/Alex%20Gonley.jpg" /> Alex Gonley </td>
                            <td>London </td>
                            <td>23 Apr, 2023 </td>
                            <td>
                                <p class="status cancelled">
                                    Cancelled</p>
                            </td>
                            <td><strong>$399.99</strong> </td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>
                                <img alt="" src="images/Alson%20GC.jpg" /> Jeet Saru </td>
                            <td>New York </td>
                            <td>20 May, 2023 </td>
                            <td>
                                <p class="status delivered">
                                    Delivered</p>
                            </td>
                            <td><strong>$399.99</strong> </td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>
                                <img alt="" src="images/Sarita%20Limbu.jpg" /> Aayat Ali Khan </td>
                            <td>Islamabad </td>
                            <td>30 Feb, 2023 </td>
                            <td>
                                <p class="status pending">
                                    Pending</p>
                            </td>
                            <td><strong>$149.70</strong> </td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>
                                <img alt="" src="images/Alex%20Gonley.jpg" /> Alson GC </td>
                            <td>Dhaka </td>
                            <td>22 Dec, 2023 </td>
                            <td>
                                <p class="status cancelled">
                                    Cancelled</p>
                            </td>
                            <td><strong>$249.99</strong> </td>
                        </tr>
                    </table>
                </section>
    </main></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
