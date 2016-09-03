<%!

private float calcularImc(float peso, float altura) {
  return peso / (altura * altura);
}

private String resultadoImc(float imc, String sexo) {
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
}

%>
