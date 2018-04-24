require 'spec_helper'

module TestAutotestStepsRu

  include BaseElementsAndMethods

  step 'что Елизавета открыла "rubygems.org"' do
    open_rubygems
  end

  step 'Елизавета ввела в поле поиска "acceptance_testing"' do
    entering_text
  end

  step 'Елизавета нажала клавишу "enter"' do
    press_enter_button
  end

  step 'Елизавете открывается страница gem "acceptance_testing"' do
    visible_gem_name
  end
end

RSpec.configure { |c| c.include TestAutotestStepsRu }
