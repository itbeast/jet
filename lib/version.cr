module Jet
  
    # TODO: Change .jet_version files

    # [x].0.0 level changes for backwards incompatible API changes, such as changes that will break existing users code if they update
    MAJOR = 0
    # 0.[x].0 level changes for any backwards compatible API changes, such as new functionality/features
    MINOR = 0
    # 0.0.[x] level changes for implementation level detail changes, such as small bug fixes
    PATCH = 1

    VERSION = "#{MAJOR}.#{MINOR}.#{PATCH}"
end
