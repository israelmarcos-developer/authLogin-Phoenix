defmodule AuthPhoenix.Guardian.AuthPipeline do
    @claims %{typ: "access"}

    use Guardian.Plug.Pipeline,
      otp_app: :auth_phoenix,
      module: AuthPhoenix.Guardian,
      error_handler: AuthPhoenix.Guardian.AuthErrorHandler

    Plug Guardian.Plug.VerifyHeader, claims: @claim, realm: "Bearer" 
    Plug Guardian.Plug.EnsureAuthenticated 
    Plug Guardian.Plug.LoadResource, ensure: true
end