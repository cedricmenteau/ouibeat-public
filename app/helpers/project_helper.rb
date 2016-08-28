module ProjectHelper

  def icon_category_path(category)
    return 'shared/icons/icon-socialwall.svg' if category == "Social Wall"
    return 'shared/icons/icon-borne.svg' if category == "Borne"
    return 'shared/icons/icon-conception.svg' if category == "Conception"
  end

end
