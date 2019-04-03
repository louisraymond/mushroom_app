require 'rails_helper'

RSpec.describe Mushroom, type: :model do
  describe '#validations' do
      it 'should test that the factory is valid' do
        expect(build :mushroom).to be_valid
      end

      it 'should validate the presence of the "edible" property' do
        mushroom = build :mushroom, edible: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:edible]).to include("can't be blank")
      end

      it 'should validate the presence of the "cap_shape" property' do
        mushroom = build :mushroom, cap_shape: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:cap_shape]).to include("can't be blank")
      end

      it 'should validate the presence of the "cap_surface" property' do
        mushroom = build :mushroom, cap_surface: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:cap_surface]).to include("can't be blank")
      end

      it 'should validate the presence of the "cap_color" property' do
        mushroom = build :mushroom, cap_color: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:cap_color]).to include("can't be blank")
      end

      it 'should validate the presence of the "bruises" property' do
        mushroom = build :mushroom, bruises: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:bruises]).to include("can't be blank")
      end

      it 'should validate the presence of the "odor" property' do
        mushroom = build :mushroom, odor: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:odor]).to include("can't be blank")
      end

      it 'should validate the presence of the "gill_attachment" property' do
        mushroom = build :mushroom, gill_attachment: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:gill_attachment]).to include("can't be blank")
      end

      it 'should validate the presence of the "gill_spacing" property' do
        mushroom = build :mushroom, gill_spacing: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:gill_spacing]).to include("can't be blank")
      end


      it 'should validate the presence of the "gill_size" property' do
        mushroom = build :mushroom, gill_size: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:gill_size]).to include("can't be blank")
      end

      it 'should validate the presence of the "gill_color" property' do
        mushroom = build :mushroom, gill_color: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:gill_color]).to include("can't be blank")
      end

      it 'should validate the presence of the "stalk_shape" property' do
        mushroom = build :mushroom, stalk_shape: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:stalk_shape]).to include("can't be blank")
      end

      it 'should validate the presence of the "stalk_root" property' do
        mushroom = build :mushroom, stalk_root: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:stalk_root]).to include("can't be blank")
      end

      it 'should validate the presence of the "stalk_surface_above_ring" property' do
        mushroom = build :mushroom, stalk_surface_above_ring: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:stalk_surface_above_ring]).to include("can't be blank")
      end


      it 'should validate the presence of the "stalk_surface_below_ring" property' do
        mushroom = build :mushroom, stalk_surface_below_ring: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:stalk_color_below_ring]).to include("can't be blank")
      end

      it 'should validate the presence of the "veil_type" property' do
        mushroom = build :mushroom, veil_type: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:veil_type]).to include("can't be blank")
      end

      it 'should validate the presence of the "veil_color" property' do
        mushroom = build :mushroom, veil_color: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:veil_color]).to include("can't be blank")
      end

      it 'should validate the presence of the "ring_number" property' do
        mushroom = build :mushroom, ring_number: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:ring_number]).to include("can't be blank")
      end

      it 'should validate the presence of the "ring_type" property' do
        mushroom = build :mushroom, ring_type: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:ring_type]).to include("can't be blank")
      end

      it 'should validate the presence of the "spore_print_colororange" property' do
        mushroom = build :mushroom, spore_print_colororange: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:spore_print_colororange]).to include("can't be blank")
      end

      it 'should validate the presence of the "population" property' do
        mushroom = build :mushroom, population: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:population]).to include("can't be blank")
      end

      it 'should validate the presence of the "habitat" property' do
        mushroom = build :mushroom, habitat: ''
        expect( mushroom).not_to be_valid
        expect( mushroom.errors.messages[:habitat]).to include("can't be blank")
      end
    end
  end
