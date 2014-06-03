class SystemAdmin < BasePage

  page_url "#{$base_url}portal.do?selectedTab=portalSystemAdminBody"

  expected_element :menu_header

  element(:menu_header) { |b| b.frm.h2(text: 'System') }

  links 'Person', 'Person Extended Attributes', 'Group', 'Role', 'Parameter'

end