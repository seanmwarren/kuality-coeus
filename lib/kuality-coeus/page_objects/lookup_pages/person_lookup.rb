class PersonLookup < Lookups

  url_info 'Person','rice.kim.api.identity.Person'

  element(:kcperson_id) { |b| b.frm.text_field(name:'personId') }

  element(:principal_name) { |b| b.frm.text_field(id: 'principalName') }
  element(:principal_id) { |b| b.frm.text_field(id: 'principalId') }

  alias_method :select_person, :check_item

  value(:returned_full_names) { |b|
    names=[]
    b.results_table.tbody.trs.each { |row|
                                      names << row[2].text.strip
                                   }
    names.delete_if { |name| name=='' }
    names
  }

  value(:returned_principal_names) { |b|
    names=[]
    b.results_table.tbody.trs.each { |row|
      names << row[1].text.strip
    }
    names.delete_if { |name| name=='' }
    names
  }

end