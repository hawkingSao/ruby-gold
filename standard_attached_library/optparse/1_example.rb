require 'optparse'

opt = OptionParser.new(banner = 'optparseのサンプル', width = 32, indent = ' ' * 2)
options = {}

opt.on('-o', '--output', 'output file'){ |v| options['output'] = v }
opt.on('-i', '--input', 'input file'){ |v| options['input'] = v }

opt.parse!(ARGV)

p options
p ARGV
