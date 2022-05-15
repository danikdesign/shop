Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

class Book < Product

  attr_accessor :title, :author, :genre

  def initialize(params)
    super(params)
    @title = params[:title]
    @author = params[:author]
    @genre = params[:genre]
  end

  def to_s
    "Книга \"#{@title}\", #{@genre}, автор - #{@author}, #{super}"
  end

  def self.from_file(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, 'r')
      lines = f.readlines(chomp: true)
      f.close
    else
      return nil
    end

    self.new(title: lines[0], genre: lines[1], author: lines[2], price: lines[3].to_i, amount: lines[4].to_i)

  end
end