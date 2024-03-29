<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>
<script type="text/javascript" src="libraries/chart.js/2.7.2/js/chart.js"></script>

<acme:form readonly="true">
	
	<div class="chart-container" style="position: relative; height:40; width:80">	
	<h2>
	<acme:message code="administrator.chart.form.title.company"/>
	</h2>
	<canvas id="myChart"></canvas>
	<br>
	<br>
	<br>
	<h2>
	<acme:message code="administrator.chart.form.title.investor"/>
	</h2>
	<canvas id="myChart2"></canvas>
	</div>
	
	<script type="text/javascript">

	var compsec = new Array();
	<jstl:forEach items="${companySector}" var="companySecItem">
		compsec.push("${companySecItem}");
	</jstl:forEach>
	
	var compnum = new Array();
	<jstl:forEach items="${companyNumber}" var="companyNumItem">
		compnum.push("${companyNumItem}");
	</jstl:forEach>
		
 	var labels = [];
	var i;
	for (i = 0; i < compsec.length; i++) {
		labels.push(compsec[i]);
	}
	
	var data = [];
	var j;
	for (j = 0; j < compnum.length; j++) {
		data.push(compnum[j]);
	}
	
	var ctx = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels,
	        datasets: [{
	            data,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	    options: {
	    	legend: {display:false},
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero: true
	                }
	            }]
	        }
	    }
	});
	
	</script>

	<script type="text/javascript">
	
	var invsec = new Array();
	<jstl:forEach items="${investorSector}" var="investorSecItem">
		invsec.push("${investorSecItem}");
	</jstl:forEach>
	
	var invnum = new Array();
	<jstl:forEach items="${investorNumber}" var="investorNumItem">
		invnum.push("${investorNumItem}");
	</jstl:forEach>
	
 	var labels = [];
	var i;
	for (i = 0; i < invsec.length; i++) {
		labels.push(invsec[i]);
	}
	
	var data = [];
	var j;
	for (j = 0; j < invnum.length; j++) {
		data.push(invnum[j]);
	}
	
	var ctx = document.getElementById('myChart2').getContext('2d');
	var myChart2 = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels,
	        datasets: [{
	            data,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)',
	                'rgba(54, 162, 235, 0.2)',
	                'rgba(255, 206, 86, 0.2)',
	                'rgba(75, 192, 192, 0.2)',
	                'rgba(153, 102, 255, 0.2)',
	                'rgba(255, 159, 64, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255, 99, 132, 1)',
	                'rgba(54, 162, 235, 1)',
	                'rgba(255, 206, 86, 1)',
	                'rgba(75, 192, 192, 1)',
	                'rgba(153, 102, 255, 1)',
	                'rgba(255, 159, 64, 1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	    options: {
	    	legend: {display:false},
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero: true
	                }
	            }]
	        }
	    }
	});

	</script>

	<acme:form-return code="administrator.chart.form.button.return"/>
</acme:form>