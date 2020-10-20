<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Vendor
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        <form:form method="post" modelAttribute="vendor" action="/admin/updatevendor" role="form">
            <input type="hidden" value="${vendor.vendorid}" name="vendorid" class="form-control" id="vendorid"
            placeholder="vendorid" required ="true" readonly>
            <input type="text" value="${vendor.name}" name="name" class="form-control" id="name"
            placeholder="name" required ="true" >
            <input type="text" value="${vendor.monthlyAmount}" name="monthlyAmount" class="form-control" id="monthlyAmount"
            placeholder="monthly Amount" required ="true">
            <input type="text" value="${vendor.officeDetails}" name="officeDetails" class="form-control" id="officeDetails"
            placeholder="office Details" required ="true" >
            <input type="text" value="${vendor.street}" name="street" class="form-control" id="street"
            placeholder="street" required ="true" >
            <input type="text" value="${vendor.state}" name="state" class="form-control" id="state"
            placeholder="state" required ="true" >
            <input type="text" value="${vendor.city}" name="city" class="form-control" id="city"
            placeholder="city" required ="true" >
            <input type="text" value="${vendor.pincode}" name="pincode" class="form-control" id="pincode"
            placeholder="pincode" required ="true" >
            <input type="text" value="${vendor.code}" name="code" class="form-control" id="code"
            placeholder="IFSC Code" required ="true" >
            <input type="text" value="${vendor.email}" name="email" class="form-control" id="email"
            placeholder="email" required ="true">
            <input type="text" value="${vendor.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" >
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>