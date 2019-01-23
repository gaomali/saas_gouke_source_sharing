class CreateSigns < ActiveRecord::Migration
  def self.up
    #�������ű�
    create_table "signs"  do |t|
	t.column :user_id,	:integer
	t.column :level,		:integer  #����,1����,2ͼ��,3��Ƶ,4��Ƶ
	t.column :tags,		:string,:limit=>100
	t.column :src,		:string
	t.column :desc,		:text,	 :limit=>2000
    end
    #�������۱�
    create_table "opinions" do |t|
	t.column :user_id,	:integer
	t.column :sign_id,	:integer
	t.column :type,		:integer
	t.column :content,	:text,	 :limit=>2000
	t.column :created_at,	 :datetime
    end
  end

  def self.down
    drop_table "signs"
    drop_table "opinions"
  end
end
