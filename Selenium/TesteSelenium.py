from importlib.resources import Package
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
browser = webdriver.Chrome()
browser.get("https://cadastropontoturistico.000webhostapp.com/") 
time.sleep(5)

username = browser.find_element_by_id("username")
descrition = browser.find_element_by_id("descricao")
cidade = browser.find_element_by_id("cidade")
estado = browser.find_element_by_id("estado")
responsavel = browser.find_element_by_id("responsavel")
email_responsavel = browser.find_element_by_id("email_responsavel")
fone_responsavel = browser.find_element_by_id("fone_responsavel")


username.send_keys("username")
password.send_keys("password")
login_attempt = browser.find_element_by_xpath("//*[@type='submit']")
login_attempt.submit()


