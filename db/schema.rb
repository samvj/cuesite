# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090803065620) do

  create_table "cuesheets", :force => true do |t|
    t.string   "performer"
    t.string   "title"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cue_file"
  end

  create_table "songs", :force => true do |t|
    t.string   "performer"
    t.string   "title"
    t.string   "remix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["performer"], :name => "index_songs_on_performer"
  add_index "songs", ["remix"], :name => "index_songs_on_remix"
  add_index "songs", ["title"], :name => "index_songs_on_title"

  create_table "tracks", :force => true do |t|
    t.integer  "minutes"
    t.integer  "seconds"
    t.integer  "frames"
    t.integer  "song_id"
    t.integer  "cuesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "track_num"
  end

  add_index "tracks", ["song_id"], :name => "index_tracks_on_song_id"

end
