module LinkedData
  module Models
    class SubmissionTitle < LinkedData::Models::Base
      model :title, name_with: lambda { |cc| uuid_uri_generator(cc) }
      attribute :title, enforce: [:existence]
      attribute :lang, enforce: [:existence]
      attribute :titleType, enforce: [:existence]

      embedded true
    end
  end
end
