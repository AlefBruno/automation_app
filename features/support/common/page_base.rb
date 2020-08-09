module Commons
  class PageBase
    def id_element(element)
      find_element(:id, element)
    end

    def class_element(element)
      find_element(:class, element)
    end
  end
end
