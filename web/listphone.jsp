<%@ page import="com.wcd.thi.entity.Phone" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.ListIterator" %><%--
  Created by IntelliJ IDEA.
  User: Daotu
  Date: 14/06/2019
  Time: 10:31 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Phone> listPhone = (List<Phone>) request.getAttribute("listPhone");
    if( listPhone == null){
        listPhone = new List<Phone>() {
            @Override
            public int size() {
                return 0;
            }

            @Override
            public boolean isEmpty() {
                return false;
            }

            @Override
            public boolean contains(Object o) {
                return false;
            }

            @Override
            public Iterator<Phone> iterator() {
                return null;
            }

            @Override
            public Object[] toArray() {
                return new Object[0];
            }

            @Override
            public <T> T[] toArray(T[] a) {
                return null;
            }

            @Override
            public boolean add(Phone phone) {
                return false;
            }

            @Override
            public boolean remove(Object o) {
                return false;
            }

            @Override
            public boolean containsAll(Collection<?> c) {
                return false;
            }

            @Override
            public boolean addAll(Collection<? extends Phone> c) {
                return false;
            }

            @Override
            public boolean addAll(int index, Collection<? extends Phone> c) {
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> c) {
                return false;
            }

            @Override
            public boolean retainAll(Collection<?> c) {
                return false;
            }

            @Override
            public void clear() {

            }

            @Override
            public Phone get(int index) {
                return null;
            }

            @Override
            public Phone set(int index, Phone element) {
                return null;
            }

            @Override
            public void add(int index, Phone element) {

            }

            @Override
            public Phone remove(int index) {
                return null;
            }

            @Override
            public int indexOf(Object o) {
                return 0;
            }

            @Override
            public int lastIndexOf(Object o) {
                return 0;
            }

            @Override
            public ListIterator<Phone> listIterator() {
                return null;
            }

            @Override
            public ListIterator<Phone> listIterator(int index) {
                return null;
            }

            @Override
            public List<Phone> subList(int fromIndex, int toIndex) {
                return null;
            }
        };
    }
%>
<html>
<head>
    <title>List Phone</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
    </style>
</head>
<jsp:include page="include.jsp"/>
<body>
<h2>List Phone</h2>

<table style="width:100%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    <%
        for (Phone phone:
                listPhone) {
    %>
    <tr>
        <th><%=phone.getId() %></th>
        <th><%=phone.getName() %></th>
        <th><%=phone.getBrand() %></th>
        <th><%=phone.getPrice() %></th>
        <th><%=phone.getDescription() %></th>
    </tr>
    <%
        }
    %>


</table>

</body>
</html>
