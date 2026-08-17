# UNKNOWN HAVELI — Game Design & Development Master Specification

## 0. IMPORTANT: READ THIS FIRST

This document is the master product/design specification for the game **UNKNOWN HAVELI**.

The game is a mobile-first Indian multiplayer psychological horror game.

The goal is NOT to make a cheap "Granny clone". The game must feel like a real horror movie that the player is actually inside.

### CRITICAL DEVELOPMENT RULE

**PHASE 1 = PLAN ONLY.**

When OpenCode receives this file:

1. Read this entire file first.
2. Inspect the current repository/project.
3. Do not start implementing the game immediately.
4. Do not randomly create files just to show progress.
5. First produce a complete implementation plan.
6. Identify missing information, technical risks, dependencies, assets, networking decisions, Android requirements, crash-reporting requirements, and CI/CD requirements.
7. Divide the work into small phases/milestones.
8. Explain what will be built in each phase and how it will be tested.
9. Wait for approval before making the actual implementation.

If the repository is empty, propose the project structure before creating the full game.

---

# 1. GAME IDENTITY

## Working title

**UNKNOWN HAVELI**

## Genre

- Indian psychological horror
- First-person horror
- 1–4 player online co-op
- Mystery
- Exploration
- Puzzle solving
- Survival
- Replayable procedural/randomized events

## Platform

Primary platform:

- Android

Future platforms can be considered later.

## Engine

Preferred engine:

**Godot 4.x**

Use GDScript unless there is a strong technical reason to use another supported language.

Do not switch to Unity without explicit approval.

## Build/development environment

The developer is mobile-only.

Expected workflow:

Android phone
→ Termux / OpenCode
→ Git
→ GitHub
→ GitHub Actions
→ Cloud build
→ APK/AAB
→ Android phone for testing

Do not assume Android Studio is available locally.

---

# 2. THE CORE IDEA

Four friends enter an abandoned Indian haveli.

They think they are investigating an old mystery.

But the haveli has rules.

The rules are not always the same.

Some rules are true.

Some rules are incomplete.

Some rules contradict each other.

And sometimes...

**there may be a fifth person inside the house.**

The game should make players question:

- What is real?
- Which rule is correct?
- Can I trust what I see?
- Is that actually my friend?
- Is the house changing?
- Did we accidentally trigger something?
- Who wrote the rules?
- Why are the rules different every night?

The main gameplay identity is:

> **Indian Haveli + 1–4 Player Co-op + Changing Rules + Psychological Horror + Mystery**

---

# 3. DO NOT MAKE IT A GRANNY CLONE

This is extremely important.

Do NOT build:

- A simple enemy that walks around the house.
- Three keys followed by an exit door.
- Constant jumpscares.
- A direct copy of Granny.
- A direct copy of R.E.P.O./Lethal Company.
- A generic "Indian ghost" with no original identity.
- Random scary sounds every few seconds.

The game needs its own identity.

The strongest hook is:

> **The rules of the house can change from match to match, and players cannot always trust what they see or hear.**

---

# 4. STORY OPENING

The game must NOT start with:

> "Four players enter a haunted house."

The opening should feel like a horror movie.

## Opening sequence

Start with a black screen.

No music at first.

Only subtle environmental audio:

- Rain
- Distant thunder
- Wind
- Very faint room ambience

Then an old recording begins.

Example narration:

> "1998 mein is gaon se ek poora parivaar gayab ho gaya tha."

Show:

- Old family photograph
- Old newspaper clipping
- Police report
- Photograph of the haveli
- Old map
- Missing-person document

Then narration:

> "Police ko ghar ke andar kisi ke hone ka koi proof nahi mila."

Pause.

Then:

> "Lekin ghar ke andar chaar logon ke pairon ke nishaan mile the..."

Pause.

> "...aur paanchve aadmi ke nishaan bahar ja rahe the."

Cut to black.

Show title:

# UNKNOWN HAVELI

Then:

## 2026

The story moves to four friends.

---

# 5. THE FOUR FRIENDS

The four characters should feel like real people.

Do not make them generic horror-game characters.

They should have:

- Different personalities
- Different ways of speaking
- Small disagreements
- Humor
- Friend dynamics
- Individual reasons for coming
- Different reactions to fear

The dialogue should feel natural.

Example style:

> "Bhai, ye Google Maps pe hai hi nahi."

> "Toh Google Maps ko bhi bhoot dikhta hai kya?"

> "Chup kar aur torch idhar maar."

Avoid robotic exposition.

Do not make characters constantly explain things the player can already see.

---

# 6. WHY THEY GO TO THE HAVELI

There must be a believable reason.

Possible starting point:

One of the friends finds an old diary belonging to a family member.

The diary repeatedly mentions:

**Bhairav Haveli**

The friends discover that the haveli is connected to a disappearance from 1998.

They decide to investigate.

The exact backstory should be refined during the planning phase.

The player must understand:

**Why are these people going there?**

---

# 7. JOURNEY TO THE HAVELI

Do not teleport the player directly into the house.

Create a short opening journey.

Example:

- Four friends travel by car.
- It is raining.
- The road becomes increasingly empty.
- Mobile signal gets weaker.
- GPS stops working.
- The car eventually stops.
- They see an old milestone.
- The milestone says the haveli is nearby.
- They walk toward the haveli.

This section establishes atmosphere before horror starts.

---

# 8. FIRST VIEW OF THE HAVELI

The haveli should feel like a real Indian location.

Not a generic Western mansion with Indian decorations.

Use believable Indian architecture and objects:

- Courtyard / aangan
- Old wooden doors
- Stone walls
- Old switches
- Old ceiling fans
- Wooden furniture
- Old photographs
- Steel utensils
- Charpai
- Old clocks
- Family documents
- Religious/cultural objects handled respectfully
- Dust
- Damp walls
- Old wiring
- Rusted gates
- Broken windows
- Rainwater
- Plants/weeds
- Natural clutter

The environment should tell a story without requiring narration.

---

# 9. THE FIRST RULE

Near the entrance, the players find an old wooden board.

It says:

## GHAR KE NIYAM

1. Raat ke baad peeche se apna naam suno toh mudna mat.
2. Agar ghanti teen baar baje, sabhi ek jagah mat rehna.
3. Agar ghar mein paanch log dikhai dein...
4. ...toh unmein se kisi par bharosa mat karna.

The players laugh because there are only four of them.

But the player should later understand why this rule exists.

---

# 10. CHANGING RULES SYSTEM

This is the most important gameplay system.

Each match has a rule set.

Rules should be selected/generated from carefully designed rule templates.

Do NOT create completely random nonsense.

Every rule must have:

- A gameplay purpose
- A possible consequence
- A way to discover it
- A way to misunderstand it
- A connection to the story

Examples:

### Rule A

"If you hear your name from behind, don't turn around."

### Rule B

"When the bell rings three times, don't stay together."

### Rule C

"Do not turn on the kitchen light after midnight."

### Rule D

"Never enter Room 207 alone."

### Rule E

"If you see another version of your friend, do not approach."

### Rule F

"Do not look into the mirror after the second bell."

### Rule G

"If someone disappears, do not immediately search for them."

### Rule H

"Do not trust rules written after midnight."

Rules can change between matches.

---

# 11. RULES MUST BE PART OF THE STORY

Rules should not feel like a game menu mechanic.

Players should discover them through:

- Diaries
- Old notes
- Wall writing
- Recordings
- Newspapers
- Photographs
- Objects
- Environmental clues
- NPC dialogue
- Previous victims' records

Different documents may contain contradictory rules.

Example:

### 1998 diary

> "Never enter the basement."

### 2007 note

> "The basement is safe after midnight."

### New note

> "Never trust rules written before you arrived."

Now the players have to decide what to believe.

---

# 12. THE FIFTH PLAYER

One of the game's strongest horror mechanics.

A normal match has four real players.

But certain rule sets can introduce a false fifth presence.

The entity can imitate:

- Appearance
- Player name
- Movement
- Clothing
- Voice-like sounds
- Typical player behavior

Example:

Player A sees Player B standing in a corridor.

Player A says:

> "Bhai, tu yahan hai?"

Real Player B replies through voice chat:

> "Main basement mein hoon."

Now Player A knows the person in front of him is not B.

This should be rare enough to remain scary.

Do not overuse it.

---

# 13. PSYCHOLOGICAL HORROR

The game should rely more on uncertainty than jumpscares.

Good horror:

- A door that was open is now closed.
- A clock shows the wrong time.
- A family photo has changed.
- A player's reflection is delayed.
- Footsteps stop when the player stops.
- A room appears slightly different.
- A teammate is seen somewhere they cannot physically be.
- A voice comes from the wrong direction.
- A light turns on by itself.
- An object moves between visits.

Bad horror:

- Loud sound every 30 seconds.
- Monster appearing randomly in the player's face.
- Constant screaming.
- Cheap jumpscare spam.

---

# 14. THE ENEMY

The entity should have its own identity.

Do not simply copy an existing horror character.

The entity should have a believable mythology and behavior.

Possible behavior states:

PATROL
→ HEAR SOUND
→ INVESTIGATE
→ SEE PLAYER
→ CHASE
→ LOSE PLAYER
→ SEARCH
→ RETURN

Additional behavior:

- Learns repeated player habits.
- Checks common hiding places.
- Reacts to sound.
- Reacts to lights.
- Can trigger specific house events.
- May imitate players.
- May deliberately avoid the player sometimes.

The AI should feel intelligent without cheating.

---

# 15. THE HOUSE SHOULD FEEL ALIVE

The house itself should participate in the horror.

Possible changes:

- Room layout variations
- Different locked rooms
- Different item locations
- Different secret passages
- Different light states
- Different sounds
- Different photographs
- Different clues
- Different puzzle configurations
- Different supernatural events

The house should not completely procedurally generate itself.

Use a controlled system:

**Fixed believable environment + controlled variations.**

This preserves quality.

---

# 16. MAP

Initial map:

## Ground floor

- Main entrance
- Drawing room
- Dining room
- Kitchen
- Store room
- Courtyard
- Pooja room
- Staircase

## First floor

- Bedrooms
- Library
- Old office
- Balcony
- Long corridor
- Locked room

## Basement

- Storage
- Old records
- Hidden room
- Tunnel/secret area

Start with a smaller playable area.

Expand only after the core gameplay works.

---

# 17. GAMEPLAY LOOP

A typical match:

1. Enter the haveli.
2. Discover the current rules.
3. Explore.
4. Find clues.
5. Find useful items.
6. Solve puzzles.
7. Avoid or survive the entity.
8. Discover hidden story information.
9. Adapt when the house changes.
10. Work together.
11. Decide whether to trust suspicious events.
12. Unlock the escape path.
13. Follow the final condition.
14. Escape or die.
15. Receive an ending based on what happened.

---

# 18. MULTIPLAYER

Maximum:

**4 players**

The network architecture should be server-authoritative.

Important game state should NOT be trusted from clients.

Server should control/validate:

- Player state
- Item pickup
- Door state
- Puzzle state
- Rule state
- Enemy state
- Important world events
- Match state
- Win/loss state

The exact networking technology should be researched during Phase 1.

Do not choose a multiplayer backend blindly.

The plan should compare suitable options for:

- Cost
- Android compatibility
- Godot compatibility
- 1–4 player games
- NAT/firewall issues
- Dedicated server support
- Scalability
- Ease of development
- Free-tier limitations

---

# 19. VOICE CHAT

Voice chat is desirable but NOT required for the first prototype.

Later:

- Proximity voice
- Team voice
- Mute
- Push-to-talk
- Player volume control

Voice chat should never be required for the game to be playable.

---

# 20. MOBILE CONTROLS

The game is Android-first.

Controls should be designed specifically for touch.

Suggested:

Left:

- Movement joystick

Right:

- Camera/look area

Buttons:

- Interact
- Crouch
- Run
- Inventory
- Flashlight
- Optional contextual actions

Controls must be:

- Responsive
- Customizable
- Comfortable on small screens
- Comfortable on large screens

---

# 21. REALISTIC FEEL

"Real feel" is a major requirement.

The game should not feel like a collection of AI-generated assets and scripts.

Every system should be designed as if a professional small game team is making it.

Focus on:

## Lighting

- Realistic light falloff
- Dark areas
- Flashlight behavior
- Indoor/outdoor lighting
- Rain reflections where appropriate
- Light flicker used carefully

## Audio

Use positional audio.

Examples:

- Footsteps
- Wooden floor creaks
- Rain
- Thunder
- Ceiling fan
- Distant dog
- Insects
- Metal sounds
- Door movement
- Old radio
- Distant voices
- Wind

Silence is also important.

## Animation

Characters should not move like robots.

Need:

- Walking
- Running
- Crouching
- Looking around
- Door interaction
- Item pickup
- Flashlight use
- Damage
- Death
- Enemy animations

## Environment

Objects should have believable:

- Scale
- Placement
- Materials
- Lighting
- Collision
- Sound behavior

---

# 22. PERFORMANCE

The game must be designed for Android.

Do not build a PC-quality scene and simply export it to mobile.

Plan for:

- Low-end Android devices
- Mid-range Android devices
- High-end Android devices

Use scalable:

- Texture quality
- Shadow quality
- Lighting
- Effects
- Resolution
- View distance
- Object detail

Avoid unnecessary:

- Huge textures
- Excessive dynamic lights
- Excessive particles
- Huge unoptimized meshes
- Unnecessary scripts running every frame

Create graphics presets:

LOW
MEDIUM
HIGH

Potentially add an automatic quality option later.

---

# 23. SAVE SYSTEM

Save:

- Settings
- Graphics preference
- Audio settings
- Controls
- Accessibility settings
- Unlocked story information
- Progress where appropriate

Do not save sensitive information unnecessarily.

---

# 24. CRASH REPORTING — VERY IMPORTANT

The game must have its own crash-reporting system.

This is separate from GitHub Actions build failures.

We need to handle:

- Debug APK crashes
- Release APK crashes
- Unhandled exceptions
- Fatal errors where Android/Godot exposes useful information

## Desired behavior

If the game crashes:

1. Capture the crash/exception information when technically possible.
2. Save a local crash report immediately.
3. Include:
   - Crash reason
   - Exception/error message
   - Stack trace
   - Timestamp
   - App version
   - Build type (debug/release)
   - Godot version
   - Android version
   - Device model
   - Relevant game state
   - Last known scene
   - Last known player state where safe
4. Attempt to show a custom crash screen after the crash/relaunch.
5. The screen should clearly say:

> **UNKNOWN HAVELI CRASHED**

Then show:

> Crash reason: ...
>
> Error: ...
>
> Log:

A button:

**COPY CRASH LOG**

Another:

**CLOSE**

Optional:

**SHARE LOG**

## IMPORTANT ANDROID LIMITATION

Do not assume Android will always allow an app that has just crashed to immediately display a new activity/overlay on top of the home screen.

Background activity launches, overlay permissions, process death, and OEM behavior can affect this.

Therefore the implementation plan MUST evaluate a robust fallback:

- Persist crash report before process termination.
- On next launch, show the crash screen.
- Consider a notification if immediate UI is not reliably possible.
- If an overlay is used, evaluate the required Android permission and background restrictions.
- Do not request dangerous/sensitive permissions without a real requirement.

The final UX should still make it easy to copy the crash reason and full log.

## Crash report location

Use an app-private location appropriate for Android.

Do not expose raw files to other apps unnecessarily.

---

# 25. CRASH REPORT FORMAT

Use a readable format.

Example:

UNKNOWN HAVELI CRASH REPORT

App Version:
Build:
Godot Version:
Android Version:
Device:

Timestamp:

Scene:

Crash Reason:

Exception:

Stack Trace:

Recent Game Events:

Last Known State:

Additional Information:

---

# 26. DEBUG VS RELEASE

Crash reporting must be tested in:

- Debug APK
- Release APK

Do not assume because debug works that release works.

Release builds must be tested separately.

Do not disable crash reporting just because it is a release build.

---

# 27. LOGGING SYSTEM

Create structured internal logging.

Possible levels:

- DEBUG
- INFO
- WARNING
- ERROR
- FATAL

Avoid logging:

- Passwords
- API keys
- Tokens
- Sensitive personal information

Logs should be useful for AI-assisted debugging.

---

# 28. AI-ASSISTED DEBUGGING WORKFLOW

The goal is to make crash logs easy to give back to OpenCode.

Example workflow:

Game crashes
→ Crash report saved
→ User opens crash report
→ User taps COPY CRASH LOG
→ User pastes it into OpenCode
→ OpenCode analyzes the error
→ OpenCode identifies likely root cause
→ OpenCode proposes a fix
→ User approves
→ OpenCode implements fix
→ Git commit/push
→ GitHub Actions builds again
→ Test APK

---

# 29. GITHUB ACTIONS / CI/CD

GitHub Actions should be the source of truth for cloud builds.

For Godot, the workflow should:

1. Checkout repository.
2. Install/setup the required Godot version.
3. Install/setup Android SDK/JDK as required.
4. Import project if needed.
5. Run automated validation/tests where practical.
6. Build Debug APK.
7. Build Release APK/AAB when configured.
8. Upload build artifacts.
9. Preserve useful logs if the build fails.
10. Fail clearly if anything goes wrong.

Do not fake a build.

Do not create an APK by simply renaming a file.

The output must be a REAL Android build.

---

# 30. GITHUB ACTIONS FAILURE LOOP

If the build fails:

1. Read the complete GitHub Actions log.
2. Identify the actual root cause.
3. Do not hide the error.
4. Fix the root cause.
5. Run local/static validation where possible.
6. Commit the fix.
7. Push to GitHub.
8. Let GitHub Actions build again.
9. Repeat until the build passes.

Do not blindly make random changes.

Do not change unrelated code just to make CI green.

---

# 31. ASSET MANAGEMENT

Before implementing the full game, define an asset strategy.

Need:

- 3D environment assets
- Characters
- Enemy
- Animations
- Textures
- Materials
- UI
- Sound effects
- Music
- Voice
- VFX

Do not use copyrighted assets without permission.

Do not copy assets from existing commercial games.

For prototype development, placeholders are acceptable.

For the final game, replace placeholders with properly licensed/original assets.

---

# 32. ORIGINAL INDIAN HORROR IDENTITY

The game should feel Indian because of its:

- Architecture
- Environment
- Story
- Characters
- Dialogue
- Soundscape
- Objects
- History
- Local atmosphere

Do not rely on stereotypes.

Do not use real religious figures as disposable horror monsters.

Create an original fictional supernatural mythology inspired by the atmosphere of Indian folklore while being respectful.

---

# 33. ACCESSIBILITY

Plan for:

- Subtitle support
- Text size
- Brightness/gamma option
- Audio volume controls
- Music volume
- SFX volume
- Voice volume
- Sensitivity
- Control layout
- Color/visual accessibility where practical

---

# 34. SECURITY

Never hardcode:

- API keys
- Server secrets
- Private credentials
- Database passwords

Never trust the multiplayer client for important game decisions.

Validate important actions on the server.

Do not collect unnecessary personal information.

---

# 35. DEVELOPMENT PHASES

OpenCode should propose a detailed version of these phases.

## Phase 0 — Research & Planning

Only planning.

Deliver:

- Technical architecture
- Game architecture
- Networking comparison
- Android architecture
- Crash-reporting design
- CI/CD design
- Asset strategy
- Folder structure
- Development milestones
- Risks
- Estimated complexity
- Testing strategy

STOP AND WAIT FOR APPROVAL.

---

## Phase 1 — Godot Project Foundation

Build:

- Godot project
- Android configuration
- Basic scene
- Input system
- Basic player
- Basic camera
- GitHub Actions
- Debug build
- Release build configuration

---

## Phase 2 — First-Person Controller

Build:

- Mobile movement
- Camera
- Touch controls
- Interaction
- Flashlight
- Crouch
- Sprint

---

## Phase 3 — Small Haveli Prototype

Build only a small section:

- Entrance
- One corridor
- Two rooms
- One puzzle
- One locked door

Focus on atmosphere.

---

## Phase 4 — Horror Systems

Build:

- Rule system
- Event system
- Sound system
- Lighting events
- Environmental changes
- First enemy prototype

---

## Phase 5 — Multiplayer Prototype

Start with:

- 2 players
- Join/create room
- Player synchronization
- Movement synchronization
- Basic interaction synchronization

Then expand to 4 players.

---

## Phase 6 — Full Core Gameplay

Build:

- Inventory
- Puzzles
- Rules
- Enemy AI
- Story clues
- Escape system
- Endings

---

## Phase 7 — Fifth Player System

Implement:

- Entity imitation
- False player events
- Controlled deception
- Rule-specific behavior

---

## Phase 8 — Crash & Diagnostics

Implement:

- Crash capture
- Persistent crash reports
- Crash screen
- Copy log
- Share log
- Debug/release testing
- Fallback notification/relaunch behavior

---

## Phase 9 — Android Optimization

Test:

- Low-end
- Mid-range
- High-end

Optimize:

- FPS
- Memory
- Loading time
- Battery
- Thermal behavior
- APK/AAB size

---

## Phase 10 — Final QA

Test:

- Single player
- 2 players
- 3 players
- 4 players
- Bad network
- Disconnect
- Reconnect
- Host/server failure
- Rule changes
- Enemy AI
- Save system
- Crash reporting
- Debug APK
- Release APK
- Clean install
- Upgrade install

---

# 36. TESTING PHILOSOPHY

Do not say:

> "It should work."

Actually test it.

For every important system:

- Define expected behavior.
- Test normal behavior.
- Test invalid behavior.
- Test edge cases.
- Test device limitations.
- Test after changes.

For multiplayer:

Test:

- High latency
- Packet loss
- Player disconnect
- Player reconnect
- Two players interacting with the same object
- Two players trying to pick up the same item
- Player dying during puzzle
- Host leaving
- Network failure

---

# 37. CODE QUALITY

OpenCode must:

- Inspect existing code before changing it.
- Understand dependencies.
- Check connected code paths.
- Avoid duplicate systems.
- Avoid dead code.
- Avoid giant scripts when smaller systems are better.
- Keep systems modular.
- Add comments only where they provide real value.
- Handle errors properly.
- Avoid swallowing exceptions.
- Avoid temporary hacks becoming permanent architecture.

Before changing a system, inspect what depends on it.

---

# 38. DO NOT OVERBUILD

Do not implement every feature at once.

A playable vertical slice is more important than 100 unfinished systems.

The first real playable milestone should be:

> **One small part of the haveli + one player + one rule + one puzzle + one supernatural event + one basic enemy + Android build.**

Then expand.

---

# 39. SUCCESS CRITERIA FOR THE FIRST PLAYABLE BUILD

The first playable build should allow a player to:

1. Launch the Android game.
2. See the story opening.
3. Enter the haveli.
4. Walk around.
5. Use flashlight.
6. Interact with objects.
7. Discover a rule.
8. Solve a small puzzle.
9. Experience one believable supernatural event.
10. Encounter the first enemy behavior.
11. Exit or die.
12. Restart the game.

It does NOT need the complete multiplayer game yet.

---

# 40. FINAL QUALITY BAR

Before calling the game finished, ask:

### Does it feel like an actual Indian horror game?

### Does the story make sense?

### Does the player have a reason to explore?

### Are the rules understandable but mysterious?

### Does multiplayer make the horror better?

### Can players replay the game and experience different situations?

### Does the enemy behave believably?

### Does the house feel alive?

### Does the game run acceptably on Android?

### Does a crash produce useful information?

### Can the crash log be copied and given directly to OpenCode?

### Does GitHub Actions produce a real APK/AAB?

If the answer is no, the feature is not finished.

---

# 41. FIRST INSTRUCTION TO OPENCODE

After reading this entire file, do NOT implement anything yet.

First:

**Analyze the repository and this specification.**

Then create a detailed plan containing:

1. Current repository state.
2. Recommended Godot version.
3. Required tools.
4. Required Android SDK/JDK setup for CI.
5. Recommended GitHub Actions architecture.
6. Godot Android export strategy.
7. Multiplayer architecture options and recommendation.
8. Server/backend options and cost considerations.
9. Crash-reporting architecture.
10. Android crash/relaunch/overlay limitations.
11. Required Android permissions.
12. Game folder structure.
13. Scene architecture.
14. Script architecture.
15. Data architecture.
16. Asset pipeline.
17. Audio pipeline.
18. Save system.
19. Logging system.
20. Testing strategy.
21. Security considerations.
22. Performance strategy.
23. Development phases.
24. Risks and likely difficult areas.
25. Exact first milestone.

Clearly separate:

- MUST HAVE
- SHOULD HAVE
- LATER
- OPTIONAL

Do not implement until the plan has been reviewed and approved.

---

# 42. IMPORTANT: GITHUB ACTIONS REALITY

GitHub Actions supports cloud CI/CD workflows for Godot projects, including Android export workflows.

Unity can also be built through GitHub Actions using community tooling such as GameCI.

However, do not assume the exact workflow is automatically correct for every engine version.

Before implementation:

- Verify current Godot version.
- Verify current Android export requirements.
- Verify current GitHub Actions setup.
- Verify current Unity/GameCI setup only if Unity is being considered.
- Pin important versions where appropriate.
- Keep secrets in GitHub Actions Secrets, never in the repository.

---

# 43. FINAL PRODUCT VISION

The finished game should feel like:

**An Indian horror movie that became a multiplayer game.**

Not:

**An AI-generated game project.**

The player should forget about the code.

They should remember:

- The first time the haveli gate closed.
- The first strange rule.
- The first time a friend appeared somewhere they couldn't be.
- The first time the house changed.
- The first time the team realized the rules might be lying.
- The first time they escaped.
- And the first time they realized...

**there may have been five people in the house.**
