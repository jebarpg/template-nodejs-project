# Add emojis to default GitHub lables.
# NOTE: the bug and documentation labels are commented out since they are created with the gitmoji lables.
# if you would rather not use gitmoji labels then you can uncomment these two lines and delete the gitmoji 
# labels below.
# gh label create "🐞 bug" --color "d73a4a" --description "Something isn't working"
# gh label create "📚 documentation" --color "0075ca" --description "Improvements or additions to documentation"
gh label create "🔃 duplicate" --color "cfd3d7" --description "This issue or pull request already exists"
gh label create "✨ enhancement" --color "a2eeef" --description "New feature or request"
gh label create "🌱 good first issue" --color "7057ff" --description "Good for newcomers"
gh label create "🙋‍♀️ help wanted" --color "008672" --description "Extra attention is needed"
gh label create "🚫 invalid" --color "e4e669" --description "This doesn't seem right"
gh label create "❓ question" --color "d876e3" --description "Further information is requested"
gh label create "🚫 wontfix" --color "ffffff" --description "This will not be worked on"

#Delete all the default labels silently
gh label delete bug --confirm
gh label delete documentation --confirm
gh label delete duplicate --confirm
gh label delete enhancement --confirm
gh label delete "good first issue" --confirm
gh label delete "help wanted" --confirm
gh label delete invalid --confirm
gh label delete question --confirm
gh label delete wontfix --confirm

# Add all gitmojis to labels
gh label create "🎨 art" --color "e11d21" --description "Improve structure / format of the code."
gh label create "⚡️ zap" --color "fbca04" --description "Improve performance."
gh label create "🔥 fire" --color "e11d21" --description "Remove code or files."
gh label create "🐛 bug" --color "d73a4a" --description "Fix a bug."
gh label create "🚑 ambulance" --color "fbca04" --description "Critical hotfix."
gh label create "✨ sparkles" --color "e11d21" --description "Introduce new features."
gh label create "📝 memo" --color "fbca04" --description "Add or update documentation."
gh label create "🚀 rocket" --color "e11d21" --description "Deploy stuff."
gh label create "💄 lipstick" --color "fbca04" --description "Add or update the UI and style files."
gh label create "🎉 tada" --color "e11d21" --description "Begin a project."
gh label create "✅ white_check_mark" --color "fbca04" --description "Add, update, or pass tests."
gh label create "🔒 lock" --color "e11d21" --description "Fix security or privacy issues."
gh label create "🔐 closed_lock_with_key" --color "fbca04" --description "Add or update secrets."
gh label create "🔖 bookmark" --color "e11d21" --description "Release / Version tags."
gh label create "🚨 rotating_light" --color "fbca04" --description "Fix compiler / linter warnings."
gh label create "🚧 construction" --color "e11d21" --description "Work in progress."
gh label create "💚 green_heart" --color "fbca04" --description "Fix CI Build."
gh label create "⬇️ arrow_down" --color "e11d21" --description "Downgrade dependencies."
gh label create "⬆️ arrow_up" --color "fbca04" --description "Upgrade dependencies."
gh label create "📌 pushpin" --color "e11d21" --description "Pin dependencies to specific versions."
gh label create "👷 construction_worker" --color "fbca04" --description "Add or update CI build system."
gh label create "📈 chart_with_upwards_trend" --color "e11d21" --description "Add or update analytics or track code."
gh label create "♻️ recycle" --color "fbca04" --description "Refactor code."
gh label create "➕ heavy_plus_sign" --color "e11d21" --description "Add a dependency."
gh label create "➖ heavy_minus_sign" --color "fbca04" --description "Remove a dependency."
gh label create "🔧 wrench" --color "e11d21" --description "Add or update configuration files."
gh label create "🔨 hammer" --color "fbca04" --description "Add or update development scripts."
gh label create "🌐 globe_with_meridians" --color "e11d21" --description "Internationalization and localization."
gh label create "✏️ pencil2" --color "fbca04" --description "Fix typos."
gh label create "💩 poop" --color "e11d21" --description "Write bad code that needs to be improved."
gh label create "⏪ rewind" --color "fbca04" --description "Revert changes."
gh label create "🔀 twisted_rightwards_arrows" --color "e11d21" --description "Merge branches."
gh label create "📦 package" --color "fbca04" --description "Add or update compiled files or packages."
gh label create "👽 alien" --color "e11d21" --description "Update code due to external API changes."
gh label create "🚚 truck" --color "fbca04" --description "Move or rename resources (e.g. files, paths, routes)."
gh label create "📄 page_facing_up" --color "e11d21" --description "Add or update license."
gh label create "💥 boom" --color "fbca04" --description "Introduce breaking changes."
gh label create "🍱 bento" --color "e11d21" --description "Add or update assets."
gh label create "♿️ wheelchair" --color "fbca04" --description "Improve accessibility."
gh label create "💡 bulb" --color "e11d21" --description "Add or update comments in source code."
gh label create "🍻 beers" --color "fbca04" --description "Write code drunkenly."
gh label create "💬 speech_balloon" --color "e11d21" --description "Add or update text and literals."
gh label create "🗃️ card_file_box" --color "fbca04" --description "Perform database related changes."
gh label create "🔊 loud_sound" --color "e11d21" --description "Add or update logs."
gh label create "🔇 mute" --color "fbca04" --description "Remove logs."
gh label create "👥 busts_in_silhouette" --color "e11d21" --description "Add or update contributor(s)."
gh label create "🚸 children_crossing" --color "fbca04" --description "Improve user experience / usability."
gh label create "🏗️ building_construction" --color "e11d21" --description "Make architectural changes."
gh label create "📱 iphone" --color "fbca04" --description "Work on responsive design."
gh label create "🤡 clown_face" --color "e11d21" --description "Mock things."
gh label create "🥚 egg" --color "fbca04" --description "Add or update an easter egg."
gh label create "🙈 see_no_evil" --color "e11d21" --description "Add or update a .gitignore file."
gh label create "📸 camera_flash" --color "fbca04" --description "Add or update snapshots."
gh label create "⚗️ alembic" --color "e11d21" --description "Perform experiments."
gh label create "🔍 mag" --color "fbca04" --description "Improve SEO."
gh label create "🏷️ label" --color "e11d21" --description "Add or update types."
gh label create "🌱 seedling" --color "fbca04" --description "Add or update seed files."
gh label create "🚩 triangular_flag_on_post" --color "e11d21" --description "Add, update, or remove feature flags."
gh label create "🥅 goal_net" --color "fbca04" --description "Catch errors."
gh label create "💫 dizzy" --color "e11d21" --description "Add or update animations and transitions."
gh label create "🗑️ wastebasket" --color "fbca04" --description "Deprecate code that needs to be cleaned up."
gh label create "🛂 passport_control" --color "e11d21" --description "Work on code related to authorization, roles and permissions."
gh label create "🩹 adhesive_bandage" --color "fbca04" --description "Simple fix for a non-critical issue."
gh label create "🧐 monocle_face" --color "e11d21" --description "Data exploration/inspection."
gh label create "⚰️ coffin" --color "fbca04" --description "Remove dead code."
gh label create "🧪 test_tube" --color "e11d21" --description "Add a failing test."
gh label create "👔 necktie" --color "fbca04" --description "Add or update business logic."
gh label create "🩺 stethoscope" --color "e11d21" --description "Add or update healthcheck."
gh label create "🧱 bricks" --color "fbca04" --description "Infrastructure related changes."
gh label create "🧑‍💻 technologist" --color "e11d21" --description "Improve developer experience."
gh label create "💸 money_with_wings" --color "fbca04" --description "Add sponsorships or money related infrastructure."
gh label create "🧵 thread" --color "e11d21" --description "Add or update code related to multithreading or concurrency."
gh label create "🦺 safety_vest" --color "fbca04" --description "Add or update code related to validation."