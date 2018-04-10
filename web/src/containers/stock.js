import React from "react";
import {
  List,
  Datagrid,
  Edit,
  Create,
  SimpleForm,
  DateField,
  TextField,
  EditButton,
  DisabledInput,
  TextInput,
  LongTextInput,
  DateInput
} from "admin-on-rest";
import BookIcon from "material-ui/svg-icons/action/book";
export const PostIcon = BookIcon;

export const name = "stock";
export const list = props => (
  <List {...props}>
    <Datagrid>
      <TextField source="id" />
      <TextField source="title" />
      <TextField source="address" />
      <TextField source="phone" />
      <EditButton basePath="/stock" />
    </Datagrid>
  </List>
);

const StockTitle = ({ record }) => {
  return <span>Post {record ? `"${record.title}"` : ""}</span>;
};

export const edit = props => (
  <Edit title={<StockTitle />} {...props}>
    <SimpleForm>
      <DisabledInput source="id" />
      <TextInput source="title" />
      <TextInput source="address" />
      <TextInput source="phone" />
    </SimpleForm>
  </Edit>
);

export const create = props => (
  <Create title="Create a Post" {...props}>
    <SimpleForm redirect="list">
      <DisabledInput source="id" />
      <TextInput source="title" />
      <TextInput source="address" />
      <TextInput source="phone" />
    </SimpleForm>
  </Create>
);
