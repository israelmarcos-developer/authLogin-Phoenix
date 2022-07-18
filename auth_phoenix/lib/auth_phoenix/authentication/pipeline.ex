defmodule AuthPhoenix.Guardian.AuthPipeline do
    @claims %{typ: "access"}

    use Guardian.Plug.Pipeline,
      otp_app: :auth_phoenix,
      module: AuthPhoenix.Guardian,
      error_handler: AuthPhoenix.Guardian.AuthErrorHandler

    plug Guardian.Plug.VerifyHeader, claims: @claim, realm: "Bearer" 
    plug Guardian.Plug.EnsureAuthenticated 
    plug Guardian.Plug.LoadResource, ensure: true

    plug CORSPlug

end