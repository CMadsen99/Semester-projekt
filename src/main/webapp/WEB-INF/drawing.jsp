<%--
  Created by IntelliJ IDEA.
  User: jacobsimonsen
  Date: 14/05/2020
  Time: 15.05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<svg version="1.1"
     xmlns="http://www.w3.org/2000/svg"
     xmlns:xlink="http://www.w3.org/1999/xlink"
     height="100%" viewBox="0 0 855 690"
     preserveAspectRatio="xMinYMin">

    <defs>
        <marker
                id="beginArrow"
                markerWidth="12"
                markerHeight="12"
                refX="0"
                refY="6"
                orient="auto">
            <path d="M0,6 L12,0 L12,12 L0,6" style="fill: #000000;" />
        </marker>
        <marker
                id="beginArrow"
                markerWidth="12"
                markerHeight="12"
                refX="12"
                refY="6"
                orient="auto">
            <path d="M0,0 L12,6 L0,12 L0,0" style="fill: #000000;" />
        </marker>
    </defs>

    <line x1="40" y1="10" x2="40" y2="610" style="stroke:#000000;
        marker-start: url(#beginArrow);
        marker-end: url(#endArrow);" />

    <line x1="75" y1="650" x2="855" y2="650" style="stroke:#000000;
        marker-start: url(#beginArrow);
        marker-end: url(#endArrow);" />

    <text style="text-anchor: middle" transform="translate(30,300) rotate(-90)">${sessionScope.width} cm</text>  // DET ER DE HER MÅL DER SKAL ÆNDRES
    <text style="text-anchor: middle" x="502" y="678">${sessionScope.length} cm</text>                            // TIL DEN LÆNGDE KUNDEN HAR VALGT

    <svg version="1.1"
         xmlns="http://www.w3.org/2000/svg"
         xmlns:xlink="http://www.w3.org/1999/xlink" x="75" y="10" width="800"
         height="600" viewBox="0 0 800 600"
         preserveAspectRatio="xMinYMin">


        <rect x="0" y="0" height="600" width="780" style="stroke:#000000; fill: #ffffff" />

        <rect x="0" y="35" height="4.5" width="780" style="stroke:#000000; fill: #ffffff" />
        <rect x="0" y="565" height="4.5" width="780" style="stroke:#000000; fill: #ffffff" />

        <rect x="0" y="0" height="600" width="4.5" style="stroke:#000000; fill: #ffffff" />
        <rect x="775.5" y="0" height="600" width="4.5" style="stroke:#000000; fill: #ffffff" />

       <line x1="55" y1="35" x2="600" y2="569.5" style="stroke:#000000; stroke-dasharray: 5 5 ;" />
        <line x1="55" y1="569.5" x2="600" y2="35" style="stroke:#000000; stroke-dasharray: 5 5;" />

        <rect x="110" y="32" height="9.7" width="10" style="stroke:#000000; fill: #ffffff" />
        <rect x="420" y="32" height="9.7" width="10" style="stroke:#000000; fill: #ffffff" />
        <rect x="730" y="32" height="9.7" width="10" style="stroke:#000000; fill: #ffffff" />
        <rect x="110" y="562" height="9.7" width="10" style="stroke:#000000; fill: #ffffff" />
        <rect x="420" y="562" height="9.7" width="10" style="stroke:#000000; fill: #ffffff" />
        <rect x="730" y="562" height="9.7" width="10" style="stroke:#000000; fill: #ffffff" />

    </svg>

</svg>

</body>
</html>
