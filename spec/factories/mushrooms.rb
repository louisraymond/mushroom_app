FactoryBot.define do
  factory :mushroom do
    edible { true }
    cap_shape { "MyString" }
    cap_surface { "MyString" }
    cap_color { "MyString" }
    bruises { true }
    odor { "MyString" }
    gill_attachment { "MyString" }
    gill_spacing { "MyString" }
    gill_size { "MyString" }
    gill_color { "MyString" }
    stalk_shape { "MyString" }
    stalk_root { "MyString" }
    stalk_surface_above_ring { "MyString" }
    stalk_surface_below_ring { "MyString" }
    stalk_color_above_ring { "MyString" }
    stalk_color_below_ring { "MyString" }
    veil_type { "MyString" }
    veil_color { "MyString" }
    ring_number { 1}
    ring_type { "MyString" }
    spore_print_colororange { "MyString" }
    population { "MyString" }
    habitat { "MyString" }
  end
end
