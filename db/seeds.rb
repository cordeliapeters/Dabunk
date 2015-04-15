# Institution_ID,Institution_Name,Institution_Address,Institution_City,Institution_State,Institution_Zip,Institution_Phone,Institution_OPEID,Institution_IPEDS_UnitID,Institution_Web_Address,Campus_ID,Campus_Name,Campus_Address,Campus_City,Campus_State,Campus_Zip,Campus_IPEDS_UnitID,Accreditation_Type,Agency_Name,Agency_Status,Program_Name,Accreditation_Status,Accreditation_Date_Type,Periods,Last Action

require 'csv'
require 'json'

# file = CSV.readlines('colleges')
# file.shift

# 10.times do
#   file.each do |row|
#     @college = College.create(name: row[1], address: row[2], city: row[3], state: row[4], zip: row[5], web_url: row[9])
#   end
# end


file = File.read(File.expand_path('db/campus-data.json', Rails.root))
schools_array = JSON.parse(file)
schools_array.each do |school|
    population = school["women_total"].to_i + school["men_total"].to_i
    acronym = school["INSTNM"].split(" ").map {|word| word[0].upcase }.join('')

    if (school["MURD11"].to_i == 0 &&
        school["NEG_M11"].to_i == 0 &&
        school["FORCIB11"].to_i == 0 &&
        school["NONFOR11"].to_i == 0 &&
        school["ROBBE11"].to_i == 0 &&
        school["AGG_A11"].to_i == 0 &&
        school["BRGLA11"].to_i == 0 &&
        school["VEHIC11"].to_i == 0 &&
        school["ARSON11"].to_i == 0 &&
        school["MURD12"].to_i == 0 &&
        school["NEG_M12"].to_i == 0 &&
        school["FORCIB12"].to_i == 0 &&
        school["NONFOR12"].to_i == 0 &&
        school["ROBBE12"].to_i == 0 &&
        school["AGG_A12"].to_i == 0 &&
        school["BRGLA12"].to_i == 0 &&
        school["VEHIC12"].to_i == 0 &&
        school["ARSON12"].to_i == 0 &&
        school["MURD13"].to_i == 0 &&
        school["NEG_M13"].to_i == 0 &&
        school["FORCIB13"].to_i == 0 &&
        school["NONFOR13"].to_i == 0 &&
        school["ROBBE13"].to_i == 0 &&
        school["AGG_A13"].to_i == 0 &&
        school["BRGLA13"].to_i == 0 &&
        school["VEHIC13"].to_i == 0 &&
        school["ARSON13"].to_i == 0)
    else
        new_school = College.create(
        name: school["INSTNM"],
        school_type: school["Sector_desc"],
        state: school["State"],
        city: school["City"].titleize,
        population: population,
        acronym: acronym,
        street: school["Address"].titleize,
        zip: school["ZIP"],
        )
    end
end

