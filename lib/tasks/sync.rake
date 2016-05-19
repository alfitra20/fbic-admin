namespace :sync do

  desc 'copy common model and tests from Master'
  task :copy do

    source_path = '/home/alfitra/home/heartfeels_api'
    dest_path = '/home/alfitra/home/fbic_api'

    %x{cp #{source_path}/app/models/*.rb #{dest_path}/app/models/}
    %x{cp #{source_path}/test/models/*_test.rb #{dest_path}/test/models/}

    %x{cp #{source_path}/test/fixtures/*.yml #{dest_path}/test/fixtures/}

    %x{cp #{source_path}/config/database.yml #{dest_path}/config/database.yml}

  end

end

