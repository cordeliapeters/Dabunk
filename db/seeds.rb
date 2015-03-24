# Institution_ID,Institution_Name,Institution_Address,Institution_City,Institution_State,Institution_Zip,Institution_Phone,Institution_OPEID,Institution_IPEDS_UnitID,Institution_Web_Address,Campus_ID,Campus_Name,Campus_Address,Campus_City,Campus_State,Campus_Zip,Campus_IPEDS_UnitID,Accreditation_Type,Agency_Name,Agency_Status,Program_Name,Accreditation_Status,Accreditation_Date_Type,Periods,Last Action

require 'csv'


file = CSV.readlines('colleges')
file.shift

10.times do
  file.each do |row|
    @college = College.create(name: row[1], address: row[2], city: row[3], state: row[4], zip: row[5], web_url: row[9])
  end
end
