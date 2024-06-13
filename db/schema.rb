ActiveRecord::Schema.define(version: 20160214212950) do

    create table "Posts", force: :cascade do |t|
        t.integer "post_id"
        t.text "body"
        t.datetime "create_at", null: false
        t.datetime "updated_at", null: false
    end

    add_index "Posts", ["user_id"], name:"index_posts_on_user_id"

    create table "comments", force: :cascade do |t|
        t.integer "post_id"
        t.text "body"
        t.datetime "create_at", null: false
        t.datetime "updated_at", null: false
    end
   
    add_index "comments", ["post_id"], name: "index_comments_on_post_id"

    create_table "posts", force: :cascade do |t|
        t.string "tite"
        t.text   "body"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
    end
end
