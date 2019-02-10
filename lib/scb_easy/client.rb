require 'selenium-webdriver'

module ScbEasy
  class Client
    def self.driver
      return @driver if defined? @driver

      options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])
      @driver = Selenium::WebDriver.for(:chrome, options: options)
    end

    def initialize(username:, password:)
      @username = username
      @password = password
      @driver = self.class.driver
    end

    def savings
      begin
        header = @driver.find_element(id: 'DataProcess_imgHeader')

       account_summary unless header.attribute('src').end_with?('acc_sum_hd.gif')
      rescue Selenium::WebDriver::Error::NoSuchElementError
        account_summary
      end

      @driver.
        find_element(xpath: "//*/table[@class='pd_rt_10']/tbody/tr[3]/td[3]").
        text
    end

    private def account_summary
      @driver.get('https://www.scbeasy.com/v1.4/site/presignon/index_en.asp')

      element = @driver.find_element(name: 'LOGIN')

      element.send_keys(@username)

      element = @driver.find_element(name: 'PASSWD')

      element.send_keys(@password)

      element.submit

      # To -> My Accounts
      @driver.find_element(id: 'Img2').click

      # To -> Account Summary
      @driver.find_element(partial_link_text: 'Account Summary').click
    end
  end
end
