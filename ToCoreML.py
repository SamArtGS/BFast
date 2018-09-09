import coremltools
from sklearn.linear_model import LinearRegression
import pandas

primaryData = pandas.read_csv("HackFile.csv")

modelo = LinearRegression()
modelo.fit(primaryData[["fh_operacion","hm_hora","im_transaccion"]], primaryData["credPrea"])

coremlModel = coremltools.converters.sklearn.convert(modelo, ["fh_operacion","hm_hora","im_transaccion"], "credPrea")

coremlModel.author = "Marmota Coders HackBBVA 2018"
coremlModel.short_description = "Prototipo de modelo de creditos preaprobados dependiendo de las ganacias que disponga el cliente"
coremlModel.license = "MIT"

coremlModel.save("HackCreditoPreaprobado.mlmodel")
