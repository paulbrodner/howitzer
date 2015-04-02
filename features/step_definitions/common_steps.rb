Given /^created old howitzer project$/ do
  clean_current_dir
  run_simple 'howitzer new test_automation --rspec --cucumber'
  FileUtils.move(Dir.glob("#{Dir.pwd}/#{current_dir}/test_automation/*"), File.join(Dir.pwd, current_dir))
  FileUtils.remove_dir File.join(current_dir, 'test_automation'), true
  overwrite_file('boot.rb', "Dir.chdir(File.join(File.dirname(__FILE__), '.'))")
  overwrite_file('Gemfile', "Hello")
  remove_file 'config/default.yml'
end