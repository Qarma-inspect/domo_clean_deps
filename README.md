# DomoCleanDeps

Small example to reproduce https://github.com/IvanRublev/Domo/issues/26.
To reproduce the bug perform the following steps:

 1. Compile the project normally: `mix do deps.get, compile`
 2. Open `lib/domo_clean_deps/types.ex` and change `true` to `false` on the
    first line.
 3. Recompile the project with `mix compile`
 4. Compilation will fail.

Changing the boolean from `true` to `false` means that the
`DomoCleanDeps.Types` module will no longer exist.
In order to build things successfully, `mix clean` needs to be run.
