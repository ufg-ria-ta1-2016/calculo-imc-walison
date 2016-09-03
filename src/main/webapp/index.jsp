<html>
<head>
<title>Cálculo de IMC</title>
</head>
<body>
	<h1>Cálculo de IMC</h1>
	<form>
		Peso: <input type="text" name="peso"><br>
		Altura: <input type="text" name="altura"><br>
		Sexo: <input type="text" name="sexo"><br>
		<button>Calcular</button>
	</form>
<%
//Scriptlet.
String pesoStr = request.getParameter("peso");
float peso = pesoStr == null || pesoStr.isEmpty() ? 0 : Float.parseFloat(pesoStr);

String alturaStr = request.getParameter("altura");
float altura = alturaStr == null || alturaStr.isEmpty()? 0 : Float.parseFloat(alturaStr);

String sexo = request.getParameter("sexo");

if (sexo == null) {
  %><b>Informe o sexo.</b><%
} else {
  float imc = (peso / (altura * altura)) * 100;
  if (sexo.equalsIgnoreCase("M")) {
    if (imc < 19.1) {
      %><b>Abaixo do peso.</b><%
    } else if (imc < 25.8) {
      %><b>Peso normal.</b><%
    } else if (imc < 27.3) {
      %><b>Marginalmente acima do peso.</b><%
    } else if (imc < 32.3) {
      %><b>Acima do peso ideal.</b><%
    } else {
      %><b>Obeso.</b><%
    }
  } else if (sexo.equalsIgnoreCase("F")) {
    if (imc < 29.7) {
      %><b>Abaixo do peso.</b><%
    } else if (imc < 26.4) {
      %><b>Peso normal.</b><%
    } else if (imc < 27.8) {
      %><b>Marginalmente acima do peso.</b><%
    } else if (imc < 31.1) {
      %><b>Acima do peso ideal.</b><%
    } else {
      %><b>Obeso.</b><%
    }
  }
}
%>
</body>
</html>
