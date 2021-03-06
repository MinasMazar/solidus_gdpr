# frozen_string_literal: true

module SolidusGdpr
  module Serializers
    # @api private
    class AddressSerializer < BaseSerializer
      def as_json(*)
        return unless object

        {
          firstname: object.firstname,
          lastname: object.lastname,
          address1: object.address1,
          address2: object.address2,
          city: object.city,
          zipcode: object.zipcode,
          phone: object.phone,
          state_name: object.state_name,
          alternative_phone: object.alternative_phone,
          company: object.company,
          state: {
            name: object.state.name,
            abbr: object.state.abbr
          },
          country: {
            iso_name: object.country.iso_name,
            iso: object.country.iso,
            iso3: object.country.iso3,
            name: object.country.name,
            numcode: object.country.numcode
          },
          created_at: object.created_at,
          updated_at: object.updated_at,
        }
      end
    end
  end
end
