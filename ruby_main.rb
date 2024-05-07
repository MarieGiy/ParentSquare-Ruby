require_relative 'config'

# assert data
TITTLE = 'Sign In | ParentSquare'
ALERT_TXT = 'Alerts and Notices'

# selectors & locators
LOGIN_FLD = '#session_email'
SEARCH_BAR = '#query'
ALERT_TAB = 'ul.side-menu:nth-child(3) > li:nth-child(3) > a:nth-child(1)'
NOTICE_BTN = '#notice_type_all'

# High level Automation flow
visit ENV['LOGIN_URL']

assert_title TITTLE

find(LOGIN_FLD).fill_in(with: ENV['LOGIN'])
fill_in 'Password', with: ENV['PASS']
click_button 'Sign In'

assert_selector SEARCH_BAR
find(ALERT_TAB).click
find NOTICE_BTN, visible: true

assert_text ALERT_TXT
