# Generated by Django 3.2.6 on 2021-09-08 03:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0011_delete_seller'),
    ]

    operations = [
        migrations.CreateModel(
            name='Seller',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('seller_name', models.CharField(max_length=200)),
                ('seller_price', models.FloatField()),
                ('seller_image', models.FileField(upload_to='static/uploads')),
                ('created_date', models.DateTimeField(auto_now_add=True, null=True)),
            ],
        ),
    ]
