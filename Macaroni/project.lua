import("Macaroni", "ProjectTemplates", "1")
require "SimpleProject"

SimpleProject{
  group="your-name-here",
  project="MacaroniCMakeEx",
  version="DEV",
  libShortName = "MacaroniCMakeExLib",
  src="../src",
  target="target",
  dependencies = {
    load("Macaroni", "Boost-headers", "1.57"):Target("lib"),
    -- Uncomment this out to use Boost Test:
    -- load("Macaroni", "Boost-unit_test_framework", "1.57"):Target("lib"),
    load("Macaroni", "CppStd", "2003"):Target("lib"),
  },
};

-- The code below shows how to override the generate function created by
-- SimpleProject with your own. The same trick will work for the clean,
-- preGenerate, generate, and install functions.
--
-- spBuild = build
--
-- function build()
--    print("Do some custom stuff here before the typical build-")
--    spBuild()
--    print("- then do more after it.")
-- end

