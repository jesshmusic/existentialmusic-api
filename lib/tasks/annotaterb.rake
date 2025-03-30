Rake::Task["db:migrate"].enhance do
  sh "bundle exec annotaterb models"
end