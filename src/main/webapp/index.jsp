<html>

<%!private float calcularImc(float peso, float altura) {
  return peso / (altura * altura);
}%>

<%!private String resultadoImc(float imc, String sexo) {
  String result = "";
  if (sexo.equalsIgnoreCase("M")) {
    if (imc < 20.7) {
      result = "Abaixo do peso.";
    } else if (imc < 26.4) {
      result = "Peso normal.";
    } else if (imc < 27.8) {
      result = "Marginalmente acima do peso.";
    } else if (imc < 31.1) {
      result = "Acima do peso ideal.";
    } else {
      result = "Obeso.";
    }
  } else if (sexo.equalsIgnoreCase("F")) {
    if (imc < 19.1) {
      result = "Abaixo do peso.";
    } else if (imc < 25.8) {
      result = "Peso normal.";
    } else if (imc < 27.3) {
      result = "Marginalmente acima do peso.";
    } else if (imc < 32.3) {
      result = "Acima do peso ideal.";
    } else {
      result = "Obeso.";
    }
  }
  return result;
}%>

<head>
<title>Cálculo de IMC</title>
</head>
<body>
	<h1>Cálculo de IMC</h1>
	<form>
		Peso: <input type="text" name="peso" value="${param.peso}"><br>
		Altura: <input type="text" name="altura" value="${param.altura}"><br>
		Sexo: <input type="text" name="sexo" value="${param.sexo}"><br>
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
  %><b><%=resultadoImc(calcularImc(peso, altura), sexo)%></b><%
}
%>
</body>
</html>
