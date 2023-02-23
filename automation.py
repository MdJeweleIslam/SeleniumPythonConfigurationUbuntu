from selenium import webdriver
from selenium.webdriver.chrome.options import Options

options = Options()
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')
driver = webdriver.Chrome(executable_path='/content/chromedriver', options=options)

driver.get("https://facebook.com")
driver.set_window_size(1920, 1080)
driver.save_screenshot('Facebook.png')