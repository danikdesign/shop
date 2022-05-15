Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

class Movie < Product

  attr_accessor :title, :year, :director

  def initialize(params)
    super(params)
    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм \"#{@title}\", #{@year}, реж. #{@director}, #{super}"
  end

  def self.from_file(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, 'r')
      lines = f.readlines(chomp: true)
      f.close
    else
      return nil
    end

    self.new(title: lines[0], year: lines[1].to_i, director: lines[2], price: lines[3].to_i, amount: lines[4].to_i)

  end

end
