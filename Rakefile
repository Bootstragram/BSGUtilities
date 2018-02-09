project_name = "BSGUtilities"
project_version = "DEVELOP"
project_company = "Bootstragram"
company_id = "com.bootstragram"

desc "Clean all built files and objects"
task :clean => ['remove-documentation']

desc "Remove the documentation"
task :'remove-documentation' do |t|
  sh "rm -rf doc"
end

desc "Open"
task :open do |t|
  sh "open \"Example/BSGUtilities.xcworkspace\""
end

desc "Generate the documentation"
task :appledoc do |t|
  sh "/usr/local/bin/appledoc --verbose 2 --output ./doc --ignore .m --ignore _* --project-name #{project_name} --project-version #{project_version} --keep-undocumented-objects --keep-undocumented-members --project-company #{project_company} --company-id #{company_id} --no-repeat-first-par --no-create-docset --create-html --index-desc Pod/README.md Pod"
end

desc "Pod Install"
task :pod_install do |t|
  sh "bundle exec pod install --project-directory=Example"
end

desc "Pod Update"
task :pod_update do |t|
  sh "bundle exec pod update --project-directory=Example"
end

desc "Lint"
task :lint do |t|
  sh "bundle exec pod lib lint --allow-warnings"
end

desc "Publish pod"
task :pod_publish do |t|
  # The version branch should be available on the remote before running this
  sh "bundle exec pod trunk push BSGUtilities.podspec --allow-warnings"
end
