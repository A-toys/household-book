class Cost < ApplicationRecord
  enum :category [:food, :daily_necessities, :transportation, :book, :miscellaneous, :clothing_costs, :entertainment, :medical_bills, :rent, :communication_costs, :expence, :electricity_bill, :water_bill, :gas_bill, :insurance, :tuition]

end
