import 'package:shelf/shelf.dart';
import 'package:supabase/supabase.dart';
// import 'package:supabase/supabase.dart';

createResponse(Request _) async {
  final supabase = SupabaseClient(
    'https://kzkyweckjxtafmyplsno.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt6a3l3ZWNranh0YWZteXBsc25vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NDIzMDU5MywiZXhwIjoxOTk5ODA2NTkzfQ.yZvGo7WyhNrL5BHqvkGxaoM4KI97LIgM_bc5UkpZ5Eo',
  );

  await supabase.auth.admin.createUser(AdminUserAttributes(
    email: "maaf2000@gmail.com",
    password: "12345678",
  ));

  return Response.ok("create account page");
}
