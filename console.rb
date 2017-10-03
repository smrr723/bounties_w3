require 'pry-byebug'
require_relative 'bounty'

# class method because its a self.method in bounty.rb
Bounty.delete_all()

bounty1 = Bounty.new({
  'species' => 'Martian',
  'homeworld' => 'Mars',
  'danger_level' => 'High',
  'collected_by' => 'Agent03'
  })

bounty1.save()

bounty2 = Bounty.new({
  'species' => 'Plutonian',
  'homeworld' => 'Pluto',
  'danger_level' => 'Low',
  'collected_by' => 'Agent02'
  })

bounty2.save()

bounty3 = Bounty.new({
  'species' => 'Kryptonian',
  'homeworld' => 'Krypton',
  'danger_level' => 'ermagerdyerderd',
  'collected_by' => 'Agent01'
  })

bounty3.save()

bounty4 = Bounty.new({
  'species' => 'Glaswegian',
  'homeworld' => 'Glasgow',
  'danger_level' => 'Medium',
  'collected_by' => 'Agent07'
  })

bounty4.save()

binding.pry
nil
