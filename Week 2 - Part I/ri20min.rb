class MegaGreeter
  attr_accessor :noms

  def initialize(noms = "Lizzie")
    @noms = noms
  end

  def dis_bonjour
    if @noms.nil?
      puts "..."
    elsif @noms.respond_to?("each")
      @noms.each do |nom|
        puts "Bonjour #{nom}!"
      end
    else
      puts "Bonjour #{@noms}!"
    end
  end

  def dis_aurevoir
    if @noms.nil?
      puts "..."
    elsif @noms.respond_to?("join")
      puts "Au revoir #{@noms.join(", ")}. Reviens vite!"
    else
      puts "Au revoir #{@noms}. Reviens vite!"
    end
  end

end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.dis_bonjour
  mg.dis_aurevoir

mg.noms = "Zeke"
mg.dis_bonjour
mg.dis_aurevoir

mg.noms = ["Lizzie", "Pierrot", "Mikhail", "Yasmine", "Tristan", "Yue", "Lior", "Romaric"]
mg.dis_bonjour
mg.dis_aurevoir

mg.noms = nil
mg.dis_bonjour
mg.dis_aurevoir
end
