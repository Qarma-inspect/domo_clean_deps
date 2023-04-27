if true do
  defmodule DomoCleanDeps.Types do
    use Domo
    use TypedStruct

    @type name :: String.t()

    typedstruct do
      field(:name, name())
    end
  end
end
