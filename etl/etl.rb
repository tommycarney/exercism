class ETL
  def self.transform(old_values)
      {}.tap do |new_values|
          old_values.each do |points, letters|
            letters.each{ |letter| new_values[letter.downcase] = points }
        end
      end
  end
end
