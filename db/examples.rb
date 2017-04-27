# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
FavoritePlayer.create([
                        { player_name: 'Brett Gardner',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Left Field',
                          player_number: 11 },
                        { player_name: 'Chase Headley',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Third Base',
                          player_number: 12 },
                        { player_name: 'Matt Holliday',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Designated Hitter',
                          player_number: 17 },
                        { player_name: 'Jacoby Ellsbury',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Center Field',
                          player_number: 22 },
                        { player_name: 'Starlin Castro',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Second Base',
                          player_number: 14 },
                        { player_name: 'Aaron Judge',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Right Field',
                          player_number: 99 },
                        { player_name: 'Greg Bird',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'First Base',
                          player_number: 33 },
                        { player_name: 'Gary Sanchez',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Catcher',
                          player_number: 24 },
                        { player_name: 'Didi Gregorius',
                          team_name: 'New York Yankees',
                          sport: 'baseball',
                          position: 'Shortstop',
                          player_number: 18 }
                      ])

# Doctor.create([
#                 { given_name: 'Ben',
#                   family_name: 'Adamski',
#                   speciality: 'VapeKing' },
#                 { given_name: 'Rachel',
#                   family_name: 'Stevens',
#                   speciality: 'Horse Enthusiast' },
#                 { given_name: 'Julie',
#                   family_name: 'Carroll',
#                   speciality: 'Getting everyone jobs' },
#                 { given_name: 'Lu',
#                   family_name: 'Nathan',
#                   speciality: 'iPhone guru' },
#                 { given_name: 'Naida',
#                   family_name: 'the Pollster',
#                   speciality: 'Keeping us all caffinated' }
#               ])
